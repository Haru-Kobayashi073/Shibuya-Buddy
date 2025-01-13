import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../domain/entities/place.dart';
import '../../domain/entities/plan.dart';
import '../../infrastructure/place/place_data_source.dart';
import 'plan_detail_page_state.dart';

part 'plan_detail_page_notifier.g.dart';

@riverpod
class PlanDetailPageNotifier extends _$PlanDetailPageNotifier {
  PlaceDataSource get placeDataSource =>
      ref.read(placeDataSourceProvider.notifier);

  @override
  Future<PlanDetailPageState> build(Plan plan) async {
    final places = await getPlaces();
    return PlanDetailPageState(plan: plan, places: places);
  }

  Future<List<Place>> getPlaces() async {
    final places = await placeDataSource.getPlacesByPlanId(planId: plan.id);

    return places;
  }

  void onBookmarkButtonTap() {
    state = AsyncValue.data(
      state.requireValue.copyWith(
        plan: state.requireValue.plan
            .copyWith(isBookmarked: !state.requireValue.plan.isBookmarked),
      ),
    );
  }
}
