import 'package:collection/collection.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:uuid/uuid.dart';

import '../../domain/entities/place.dart';
import '../../domain/entities/plan.dart';
import '../../domain/entities/plan_review.dart';
import '../../domain/entities/user.dart';
import '../../i18n/strings.g.dart';
import '../../infrastructure/place/place_data_source.dart';
import '../../infrastructure/plan/plan_data_source.dart';
import '../../infrastructure/plan_review/plan_review_data_source.dart';
import '../../utils/custom_logger.dart';
import '../../utils/providers/current_user/current_user.dart';
import '../../utils/providers/scaffold_messenger/scaffold_messenger.dart';
import '../my_plan/my_plan_page_notifier.dart';
import 'components/plan_review_modal.dart';
import 'plan_detail_page_state.dart';

part 'plan_detail_page_notifier.g.dart';

@riverpod
class PlanDetailPageNotifier extends _$PlanDetailPageNotifier {
  PlanDataSource get planDataSource =>
      ref.read(planDataSourceProvider.notifier);
  PlaceDataSource get placeDataSource =>
      ref.read(placeDataSourceProvider.notifier);
  PlanReviewDataSource get planReviewDataSource =>
      ref.read(planReviewDataSourceProvider.notifier);
  ScaffoldMessenger get scaffoldMessenger =>
      ref.read(scaffoldMessengerProvider.notifier);
  User get currentUser => ref.read(currentUserProvider);

  @override
  Future<PlanDetailPageState> build(Plan plan) async {
    final latestPlan = await getPlan();
    final places = await getPlaces();
    final planReviews = await getPlanReviews();

    return PlanDetailPageState(
      plan: latestPlan,
      places: places,
      isBookmarked: latestPlan.bookmarkedUserIds.contains(currentUser.uid),
      haveUsedPlan: latestPlan.usedUserIds.contains(currentUser.uid),
      reviewsWithContent: planReviews
          .where(
            (review) => review.content != null && review.content!.isNotEmpty,
          )
          .toList(),
      reviewCount: planReviews.length,
      reviewWithContentsCount: planReviews
          .where(
            (review) => review.content != null && review.content!.isNotEmpty,
          )
          .length,
      comprehensiveRating: planReviews.isEmpty
          ? 0.0
          : (planReviews
                      .map((review) => review.reviewRating)
                      .reduce((a, b) => a + b) ~/
                  planReviews.length)
              .toDouble(),
      currentUserReview: planReviews.firstWhereOrNull(
        (review) => review.authorId == currentUser.uid,
      ),
    );
  }

  Future<List<Place>> getPlaces() async {
    final places = await placeDataSource.getPlacesByPlanId(planId: plan.id);

    return places;
  }

  Future<Plan> getPlan() async {
    try {
      return await planDataSource.getPlanData(planId: plan.id);
    } on Exception catch (e) {
      logger.e('getPlan: $e');
      return plan;
    }
  }

  Future<List<PlanReview>> getPlanReviews() async {
    try {
      return await planReviewDataSource.getPlanReviews(planId: plan.id);
    } on Exception catch (e) {
      logger.e('getPlanReviews: $e');
      return [];
    }
  }

  Future<void> onBookmarkButtonTap() async {
    final plan = state.requireValue.plan;
    final isBookmark = state.requireValue.isBookmarked;

    try {
      if (isBookmark) {
        final updatedPlan = plan.copyWith(
          bookmarkedUserIds: plan.bookmarkedUserIds
              .where((userId) => userId != currentUser.uid)
              .toList(),
          bookmarkCount: plan.bookmarkCount - 1,
        );
        await planDataSource.unbookmarkPlan(plan: updatedPlan);
        state = AsyncValue.data(
          state.requireValue.copyWith(
            plan: updatedPlan,
            isBookmarked: false,
          ),
        );
      } else {
        final updatedBookmarkedUserIds = [
          ...plan.bookmarkedUserIds,
          currentUser.uid,
        ];
        final updatedPlan = plan.copyWith(
          bookmarkedUserIds: updatedBookmarkedUserIds,
          bookmarkCount: plan.bookmarkCount + 1,
        );
        await planDataSource.bookmarkPlan(plan: updatedPlan);
        state = AsyncValue.data(
          state.requireValue.copyWith(
            plan: updatedPlan,
            isBookmarked: true,
          ),
        );
      }
      // あまりしたくはないが、MyPlanPageNotifierの状態を更新するためにinvalidateする
      ref.invalidate(myPlanPageNotifierProvider);
    } on Exception catch (e) {
      logger.e('onBookmarkButtonTap: $e');
      scaffoldMessenger.showExceptionSnackBar(
        t.planDetailsPage.snackBar.error.failedToUpdateBookmark,
      );
    }
  }

  Future<void> createReview({
    required ReviewContents reviewContents,
    required void Function() onSuccess,
  }) async {
    try {
      final review = PlanReview(
        id: const Uuid().v4(),
        authorId: currentUser.uid,
        planId: plan.id,
        reviewRating: reviewContents.rating,
        content: reviewContents.content,
        createdAt: DateTime.now(),
      );

      await planReviewDataSource.createPlanReview(
        planReview: review,
      );
      scaffoldMessenger.showSuccessSnackBar('レビューを投稿しました');
      onSuccess();
    } on Exception catch (e) {
      logger.e('createReview: $e');
      scaffoldMessenger.showExceptionSnackBar('レビューの投稿に失敗しました');
    }
  }
}
