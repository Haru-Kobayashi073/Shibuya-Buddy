// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'topic.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$TopicImpl _$$TopicImplFromJson(Map<String, dynamic> json) => _$TopicImpl(
      id: json['id'] as String? ?? '',
      translatedNameMap:
          (json['translated_name_map'] as Map<String, dynamic>).map(
        (k, e) => MapEntry($enumDecode(_$AppLocaleEnumMap, k), e as String),
      ),
      thumbnailUrl: json['thumbnail_url'] as String,
      totalCount: (json['total_count'] as num?)?.toInt() ?? 0,
      relatedPlanIds: (json['related_plan_ids'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          const [],
      ranking: (json['ranking'] as num?)?.toInt(),
      createdAt: json['created_at'] as String? ?? '',
    );

Map<String, dynamic> _$$TopicImplToJson(_$TopicImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'translated_name_map': instance.translatedNameMap
          .map((k, e) => MapEntry(_$AppLocaleEnumMap[k]!, e)),
      'thumbnail_url': instance.thumbnailUrl,
      'total_count': instance.totalCount,
      'related_plan_ids': instance.relatedPlanIds,
      'ranking': instance.ranking,
      'created_at': instance.createdAt,
    };

const _$AppLocaleEnumMap = {
  AppLocale.en: 'en',
  AppLocale.ja: 'ja',
  AppLocale.ko: 'ko',
  AppLocale.zhHans: 'zhHans',
  AppLocale.zhHant: 'zhHant',
};
