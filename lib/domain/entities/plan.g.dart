// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'plan.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$PlanImpl _$$PlanImplFromJson(Map<String, dynamic> json) => _$PlanImpl(
      id: json['id'] as String? ?? '',
      title: json['title'] as String,
      description: json['description'] as String,
      thumbnailUrl: json['thumbnail_url'] as String,
      topics: (json['topics'] as List<dynamic>)
          .map((e) => Topic.fromJson(e as Map<String, dynamic>))
          .toList(),
      authorId: json['author_id'] as String? ?? '',
      ranking: (json['ranking'] as num?)?.toInt(),
      isBookmarked: json['is_bookmarked'] as bool? ?? false,
      createdAt: json['created_at'] as String?,
      updatedAt: json['updated_at'] as String?,
    );

Map<String, dynamic> _$$PlanImplToJson(_$PlanImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'description': instance.description,
      'thumbnail_url': instance.thumbnailUrl,
      'topics': instance.topics.map((e) => e.toJson()).toList(),
      'author_id': instance.authorId,
      'ranking': instance.ranking,
      'is_bookmarked': instance.isBookmarked,
      'created_at': instance.createdAt,
      'updated_at': instance.updatedAt,
    };
