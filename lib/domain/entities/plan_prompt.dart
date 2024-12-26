import 'package:freezed_annotation/freezed_annotation.dart';

import '../../utils/date_time_converter.dart';

part 'plan_prompt.freezed.dart';
part 'plan_prompt.g.dart';

@freezed
abstract class PlanPrompt with _$PlanPrompt {
  const factory PlanPrompt({
    required String id,
    @DateTimeConverter()
    required ({String firstDate, String lastDate}) schedules,
    required String numberOfPeople,
    required List<String> transports,
    required List<String> categories,
    required List<String> topics,
    @DateTimeConverter() required DateTime createdAt,
  }) = _PlanPrompt;

  factory PlanPrompt.fromJson(Map<String, dynamic> json) =>
      _$PlanPromptFromJson(json);
}
