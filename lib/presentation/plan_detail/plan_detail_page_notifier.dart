import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../domain/entities/place.dart';
import '../../domain/entities/plan.dart';
import '../../i18n/strings.g.dart';
import '../../infrastructure/place/place_data_source.dart';
import '../../infrastructure/plan/plan_data_source.dart';
import '../../utils/custom_logger.dart';
import '../../utils/providers/scaffold_messenger/scaffold_messenger.dart';
import '../my_plan/my_plan_page_notifier.dart';
import 'plan_detail_page_state.dart';

part 'plan_detail_page_notifier.g.dart';

@riverpod
class PlanDetailPageNotifier extends _$PlanDetailPageNotifier {
  PlanDataSource get planDataSource =>
      ref.read(planDataSourceProvider.notifier);
  PlaceDataSource get placeDataSource =>
      ref.read(placeDataSourceProvider.notifier);
  ScaffoldMessenger get scaffoldMessenger =>
      ref.read(scaffoldMessengerProvider.notifier);

  @override
  Future<PlanDetailPageState> build(Plan plan) async {
    final latestPlan = await getPlan();
    final places = await getPlaces();
    return PlanDetailPageState(plan: latestPlan, places: places);
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

  Future<void> onBookmarkButtonTap() async {
    final plan = state.requireValue.plan;
    final isBookmark = plan.isBookmarked;

    try {
      if (isBookmark) {
        final updatedPlan = plan.copyWith(
          isBookmarked: false,
          bookmarkCount: plan.bookmarkCount - 1,
        );
        await planDataSource.unbookmarkPlan(plan: updatedPlan);
        state = AsyncValue.data(
          state.requireValue.copyWith(plan: updatedPlan),
        );
      } else {
        final updatedPlan = plan.copyWith(
          isBookmarked: true,
          bookmarkCount: plan.bookmarkCount + 1,
        );
        await planDataSource.bookmarkPlan(plan: updatedPlan);
        state = AsyncValue.data(
          state.requireValue.copyWith(plan: updatedPlan),
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
}
