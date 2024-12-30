// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'topic.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$TopicImpl _$$TopicImplFromJson(Map<String, dynamic> json) => _$TopicImpl(
      id: json['id'] as String? ?? '',
      name: json['name'] as String,
      thumbnailUrl: json['thumbnail_url'] as String?,
      totalCount: (json['total_count'] as num?)?.toInt() ?? 0,
      ranking: (json['ranking'] as num?)?.toInt(),
      createdAt: json['created_at'] as String? ?? '',
    );

Map<String, dynamic> _$$TopicImplToJson(_$TopicImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'thumbnail_url': instance.thumbnailUrl,
      'total_count': instance.totalCount,
      'ranking': instance.ranking,
      'created_at': instance.createdAt,
    };
