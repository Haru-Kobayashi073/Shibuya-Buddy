import 'package:freezed_annotation/freezed_annotation.dart';
import '../../domain/entities/topic.dart';

part 'create_plan_state.freezed.dart';

@freezed
class CreatePlanState with _$CreatePlanState {
  const factory CreatePlanState({
    @Default('渋谷') String location,
    String? startDate,
    String? endDate,
    @Default(0) int adultCount,
    @Default(0) int childCount,
    @Default([]) List<String> transports,
    @Default([]) List<String> categories,
    @Default([]) List<Topic> selectedTopics,
    required List<Topic> topics,
  }) = _CreatePlanState;
  const CreatePlanState._();

  bool isSelectedAll() {
    return transports.isNotEmpty &&
        topics.isNotEmpty &&
        startDate != null &&
        endDate != null &&
        (adultCount + childCount) > 0;
  }
}
