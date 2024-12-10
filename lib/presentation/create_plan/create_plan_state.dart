import 'package:freezed_annotation/freezed_annotation.dart';

part 'create_plan_state.freezed.dart';

@freezed
class CreatePlanState with _$CreatePlanState {
  const factory CreatePlanState({
    @Default('渋谷') String location,
    DateTime? date,
    @Default('') String numberOfPeople,
    @Default('') String transport,
    @Default('') String category,
    @Default([]) List<String> selectedTopics,
    @Default([]) List<String> selectedNumberofPeople,
    @Default([]) List<String> selectedTransport,
    @Default([]) List<String> selectedCategory,
  }) = _CreatePlanState;

}
