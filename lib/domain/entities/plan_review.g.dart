// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'plan_review.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$PlanReviewImpl _$$PlanReviewImplFromJson(Map<String, dynamic> json) =>
    _$PlanReviewImpl(
      id: json['id'] as String,
      planId: json['plan_id'] as String,
      authorId: json['author_id'] as String,
      reviewRating: (json['review_rating'] as num).toInt(),
      content: json['content'] as String?,
      createdAt:
          const DateTimeConverter().fromJson(json['created_at'] as String),
      updatedAt: _$JsonConverterFromJson<String, DateTime>(
          json['updated_at'], const DateTimeConverter().fromJson),
    );

Map<String, dynamic> _$$PlanReviewImplToJson(_$PlanReviewImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'plan_id': instance.planId,
      'author_id': instance.authorId,
      'review_rating': instance.reviewRating,
      'content': instance.content,
      'created_at': const DateTimeConverter().toJson(instance.createdAt),
      'updated_at': _$JsonConverterToJson<String, DateTime>(
          instance.updatedAt, const DateTimeConverter().toJson),
    };

Value? _$JsonConverterFromJson<Json, Value>(
  Object? json,
  Value? Function(Json json) fromJson,
) =>
    json == null ? null : fromJson(json as Json);

Json? _$JsonConverterToJson<Json, Value>(
  Value? value,
  Json? Function(Value value) toJson,
) =>
    value == null ? null : toJson(value);
