import 'package:freezed_annotation/freezed_annotation.dart';

import '../../domain/entities/plan.dart';

part 'my_plan_page_state.freezed.dart';

@freezed
class MyPlanPageState with _$MyPlanPageState {
  const factory MyPlanPageState({
    @Default([]) List<Plan> bookmarkPlanList,
    @Default([]) List<Plan> createPlanList,
  }) = _MyPlanPageState;
}
