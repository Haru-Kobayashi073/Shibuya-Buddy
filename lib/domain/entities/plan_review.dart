import 'package:freezed_annotation/freezed_annotation.dart';

import '../../utils/date_time_converter.dart';

part 'plan_review.freezed.dart';
part 'plan_review.g.dart';

@freezed
abstract class PlanReview with _$PlanReview {
  @JsonSerializable(fieldRename: FieldRename.snake, explicitToJson: true)
  const factory PlanReview({
    required String id,
    required String planId,
    required String authorId,
    required double reviewRating,
    String? content,
    @DateTimeConverter() required DateTime createdAt,
    @DateTimeConverter() DateTime? updatedAt,
  }) = _PlanReview;

  factory PlanReview.fromJson(Map<String, dynamic> json) =>
      _$PlanReviewFromJson(json);
}
