import 'package:freezed_annotation/freezed_annotation.dart';

part 'create_plan_state.freezed.dart';

@freezed
class CreatePlanState with _$CreatePlanState {
  const factory CreatePlanState({
    @Default('渋谷') String location,
    String? startDate,
    String? endDate,
    @Default('') String numberOfPeople,
    @Default([]) List<String> transports,
    @Default([]) List<String> categories,
    @Default([]) List<String> topics,
  }) = _CreatePlanState;
  const CreatePlanState._();

  bool isSelectedAll() {
    return transports.isNotEmpty &&
        categories.isNotEmpty &&
        topics.isNotEmpty &&
        startDate != null &&
        endDate != null &&
        numberOfPeople.isNotEmpty;
  }
}
