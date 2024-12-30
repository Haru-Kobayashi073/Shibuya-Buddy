import 'package:freezed_annotation/freezed_annotation.dart';

part 'topic.freezed.dart';
part 'topic.g.dart';

@freezed
abstract class Topic with _$Topic {
  @JsonSerializable(fieldRename: FieldRename.snake)
  const factory Topic({
    @Default('') String id,
    required String name,
    required String thumbnailUrl,
    @Default(0) int totalCount,
    int? ranking,
    @Default('') String createdAt,
  }) = _Topic;

  factory Topic.fromJson(Map<String, dynamic> json) => _$TopicFromJson(json);
}
