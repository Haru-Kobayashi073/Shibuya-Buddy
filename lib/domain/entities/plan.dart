import 'package:freezed_annotation/freezed_annotation.dart';

import '../../utils/date_time_converter.dart';

part 'plan.freezed.dart';
part 'plan.g.dart';

@freezed
abstract class Plan with _$Plan {
  const factory Plan({
    required String id,
    required String title,
    required String description,
    required String thumbnailUrl,
    required List<String> topicIds,
    List<String>? tags,
    required String authorId,
    int? ranking,
    @Default(false) required bool isBookmarked,
    @DateTimeConverter() required DateTime createdAt,
    @DateTimeConverter() required DateTime updatedAt,
  }) = _Plan;

  factory Plan.fromJson(Map<String, dynamic> json) => _$PlanFromJson(json);
}
