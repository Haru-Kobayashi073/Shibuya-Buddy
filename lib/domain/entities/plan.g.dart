// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'plan.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$PlanImpl _$$PlanImplFromJson(Map<String, dynamic> json) => _$PlanImpl(
      id: json['id'] as String,
      title: json['title'] as String,
      description: json['description'] as String,
      thumbnailUrl: json['thumbnailUrl'] as String,
      topicIds:
          (json['topicIds'] as List<dynamic>).map((e) => e as String).toList(),
      tags: (json['tags'] as List<dynamic>?)?.map((e) => e as String).toList(),
      authorId: json['authorId'] as String,
      ranking: (json['ranking'] as num?)?.toInt(),
      isBookmarked: json['isBookmarked'] as bool? ?? false,
      createdAt:
          const DateTimeConverter().fromJson(json['createdAt'] as String),
      updatedAt: _$JsonConverterFromJson<String, DateTime>(
          json['updatedAt'], const DateTimeConverter().fromJson),
    );

Map<String, dynamic> _$$PlanImplToJson(_$PlanImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'description': instance.description,
      'thumbnailUrl': instance.thumbnailUrl,
      'topicIds': instance.topicIds,
      'tags': instance.tags,
      'authorId': instance.authorId,
      'ranking': instance.ranking,
      'isBookmarked': instance.isBookmarked,
      'createdAt': const DateTimeConverter().toJson(instance.createdAt),
      'updatedAt': _$JsonConverterToJson<String, DateTime>(
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
