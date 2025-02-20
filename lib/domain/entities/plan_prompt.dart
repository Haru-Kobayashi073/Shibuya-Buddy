import 'package:freezed_annotation/freezed_annotation.dart';

import '../../utils/date_time_converter.dart';
import 'topic.dart';

part 'plan_prompt.freezed.dart';
part 'plan_prompt.g.dart';

@freezed
abstract class PlanPrompt with _$PlanPrompt {
  @JsonSerializable(explicitToJson: true)
  const factory PlanPrompt({
    required String id,
    @DateTimeConverter()
    required ({String firstDate, String lastDate}) schedules,
    required String childCount,
    required String adultCount,
    required List<String> transports,
    required List<Topic> topics,
    @DateTimeConverter() required DateTime createdAt,
  }) = _PlanPrompt;

  factory PlanPrompt.fromJson(Map<String, dynamic> json) =>
      _$PlanPromptFromJson(json);
}
