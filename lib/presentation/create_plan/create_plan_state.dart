import 'package:freezed_annotation/freezed_annotation.dart';

part 'create_plan_state.freezed.dart';

@freezed
class CreatePlanState with _$CreatePlanState {
  const factory CreatePlanState({
    @Default('渋谷') String location,
    DateTime? startDate,
    DateTime? endDate,
    @Default([]) List<String> selectedTopics,
    @Default([]) List<String> selectedNumberofPeople,
    @Default([]) List<String> selectedTransport,
    @Default([]) List<String> selectedCategory,
  }) = _CreatePlanState;
}

enum SelectionField {
  transport,
  numberOfPeople,
  category,
}
