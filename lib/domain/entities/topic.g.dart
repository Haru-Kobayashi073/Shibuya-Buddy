// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'topic.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$TopicImpl _$$TopicImplFromJson(Map<String, dynamic> json) => _$TopicImpl(
      id: json['id'] as String,
      name: json['name'] as String,
      thumbnailUrl: Uri.parse(json['thumbnailUrl'] as String),
      totalCount: (json['totalCount'] as num).toInt(),
      ranking: (json['ranking'] as num?)?.toInt(),
      createdAt:
          const DateTimeConverter().fromJson(json['createdAt'] as String),
    );

Map<String, dynamic> _$$TopicImplToJson(_$TopicImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'thumbnailUrl': instance.thumbnailUrl.toString(),
      'totalCount': instance.totalCount,
      'ranking': instance.ranking,
      'createdAt': const DateTimeConverter().toJson(instance.createdAt),
    };
