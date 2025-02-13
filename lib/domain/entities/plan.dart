import 'package:freezed_annotation/freezed_annotation.dart';

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
    @Default(0) int bookmarkCount,
    String? createdAt,
    String? updatedAt,
  }) = _Plan;

  factory Plan.fromJson(Map<String, dynamic> json) => _$PlanFromJson(json);
}
