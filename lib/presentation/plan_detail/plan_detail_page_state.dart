import 'package:freezed_annotation/freezed_annotation.dart';

import '../../domain/entities/place.dart';
import '../../domain/entities/plan.dart';

part 'plan_detail_page_state.freezed.dart';

@freezed
abstract class PlanDetailPageState with _$PlanDetailPageState {
  const factory PlanDetailPageState({
    required Plan plan,
    required List<Place> places,
  }) = _PlanDetailPageState;
}
