import 'package:freezed_annotation/freezed_annotation.dart';

import '../../i18n/strings.g.dart';

part 'topic.freezed.dart';
part 'topic.g.dart';

@freezed
abstract class Topic with _$Topic {
  @JsonSerializable(fieldRename: FieldRename.snake)
  const factory Topic({
    @Default('') String id,
    required Map<AppLocale, String> translatedNameMap,
    required String thumbnailUrl,
    @Default(0) int totalCount,
    @Default([]) List<String> relatedPlanIds,
    int? ranking,
    @Default('') String createdAt,
  }) = _Topic;

  factory Topic.fromJson(Map<String, dynamic> json) => _$TopicFromJson(json);
}
