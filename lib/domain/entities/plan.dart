import 'package:freezed_annotation/freezed_annotation.dart';

part 'plan.freezed.dart';
part 'plan.g.dart';

@freezed
abstract class Plan with _$Plan {
  @JsonSerializable(fieldRename: FieldRename.snake)
  const factory Plan({
    @Default('') String id,
    required String title,
    required String description,
    required String thumbnailUrl,
    @Default([]) List<String> topicIds,
    List<String>? tags,
    @Default('') String authorId,
    int? ranking,
    @Default(false) bool isBookmarked,
    String? createdAt,
    String? updatedAt,
  }) = _Plan;

  factory Plan.fromJson(Map<String, dynamic> json) => _$PlanFromJson(json);
}
