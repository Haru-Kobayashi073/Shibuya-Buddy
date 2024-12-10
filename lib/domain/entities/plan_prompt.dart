import 'package:freezed_annotation/freezed_annotation.dart';

import '../../utils/date_time_converter.dart';

part 'plan_prompt.freezed.dart';
part 'plan_prompt.g.dart';

@freezed
abstract class PlanPrompt with _$PlanPrompt {
  const factory PlanPrompt({
    required String id,
    @DateTimeConverter()
    required ({DateTime firstDate, DateTime lastDate}) schedules,
    required int numberOfPeople,
    required String transportation,
    required Category category,
    required List<String> topicIds,
    @DateTimeConverter() required DateTime createdAt,
  }) = _PlanPrompt;

  factory PlanPrompt.fromJson(Map<String, dynamic> json) =>
      _$PlanPromptFromJson(json);
}

enum Category {
  onePerson,
  withChildren,
  couple,
  friends,
  largeNumberOfPeople,
}
