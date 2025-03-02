import 'package:freezed_annotation/freezed_annotation.dart';

import '../../utils/date_time_converter.dart';
import 'topic.dart';

part 'plan.freezed.dart';
part 'plan.g.dart';

@freezed
abstract class Plan with _$Plan {
  @JsonSerializable(fieldRename: FieldRename.snake, explicitToJson: true)
  const factory Plan({
    @Default('') String id,
    required String title,
    required String description,
    required String thumbnailUrl,
    @Default([]) List<Topic> topics,
    @Default('') String authorId,
    int? ranking,
    @Default([]) List<String> bookmarkedUserIds,
    @Default([]) List<String> usedUserIds,
    @Default(0) int bookmarkCount,
    @DateTimeConverter() DateTime? createdAt,
    @DateTimeConverter() DateTime? updatedAt,
  }) = _Plan;

  factory Plan.fromJson(Map<String, dynamic> json) => _$PlanFromJson(json);
}
