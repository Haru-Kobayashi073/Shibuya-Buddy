import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../domain/entities/place.dart';
import '../../domain/entities/plan.dart';
import '../../infrastructure/place/place_data_source.dart';
import '../../infrastructure/plan/plan_data_source.dart';
import '../../utils/providers/scaffold_messenger/scaffold_messenger.dart';
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
    final places = await getPlaces();
    return PlanDetailPageState(plan: plan, places: places);
  }

  Future<List<Place>> getPlaces() async {
    final places = await placeDataSource.getPlacesByPlanId(planId: plan.id);

    return places;
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
        // ブックマーク解除の処理を追加

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
    } on Exception catch (_) {
      scaffoldMessenger.showExceptionSnackBar(
        'Failed to bookmark the plan. Please try again later.',
      );
    }
  }
}
