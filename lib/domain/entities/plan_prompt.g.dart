// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'plan_prompt.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$PlanPromptImpl _$$PlanPromptImplFromJson(Map<String, dynamic> json) =>
    _$PlanPromptImpl(
      id: json['id'] as String,
      schedules: _$recordConvert(
        json['schedules'],
        ($jsonValue) => (
          firstDate: $jsonValue['firstDate'] as String,
          lastDate: $jsonValue['lastDate'] as String,
        ),
      ),
      childCount: json['childCount'] as String,
      adultCount: json['adultCount'] as String,
      transports: (json['transports'] as List<dynamic>)
          .map((e) => e as String)
          .toList(),
      topics: (json['topics'] as List<dynamic>)
          .map((e) => Topic.fromJson(e as Map<String, dynamic>))
          .toList(),
      createdAt:
          const DateTimeConverter().fromJson(json['createdAt'] as String),
    );

Map<String, dynamic> _$$PlanPromptImplToJson(_$PlanPromptImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'schedules': <String, dynamic>{
        'firstDate': instance.schedules.firstDate,
        'lastDate': instance.schedules.lastDate,
      },
      'childCount': instance.childCount,
      'adultCount': instance.adultCount,
      'transports': instance.transports,
      'topics': instance.topics.map((e) => e.toJson()).toList(),
      'createdAt': const DateTimeConverter().toJson(instance.createdAt),
    };

$Rec _$recordConvert<$Rec>(
  Object? value,
  $Rec Function(Map) convert,
) =>
    convert(value as Map<String, dynamic>);
