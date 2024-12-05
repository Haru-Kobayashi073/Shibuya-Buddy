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
          firstDate: const DateTimeConverter()
              .fromJson($jsonValue['firstDate'] as String),
          lastDate: const DateTimeConverter()
              .fromJson($jsonValue['lastDate'] as String),
        ),
      ),
      numberOfPeople: (json['numberOfPeople'] as num).toInt(),
      transportation: json['transportation'] as String,
      category: $enumDecode(_$CategoryEnumMap, json['category']),
      topicIds:
          (json['topicIds'] as List<dynamic>).map((e) => e as String).toList(),
      createdAt:
          const DateTimeConverter().fromJson(json['createdAt'] as String),
    );

Map<String, dynamic> _$$PlanPromptImplToJson(_$PlanPromptImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'schedules': <String, dynamic>{
        'firstDate':
            const DateTimeConverter().toJson(instance.schedules.firstDate),
        'lastDate':
            const DateTimeConverter().toJson(instance.schedules.lastDate),
      },
      'numberOfPeople': instance.numberOfPeople,
      'transportation': instance.transportation,
      'category': _$CategoryEnumMap[instance.category]!,
      'topicIds': instance.topicIds,
      'createdAt': const DateTimeConverter().toJson(instance.createdAt),
    };

$Rec _$recordConvert<$Rec>(
  Object? value,
  $Rec Function(Map) convert,
) =>
    convert(value as Map<String, dynamic>);

const _$CategoryEnumMap = {
  Category.onePerson: 'onePerson',
  Category.withChildren: 'withChildren',
  Category.couple: 'couple',
  Category.friends: 'friends',
  Category.largeNumberOfPeople: 'largeNumberOfPeople',
};
