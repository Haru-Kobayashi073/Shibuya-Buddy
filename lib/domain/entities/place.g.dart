// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'place.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$PlaceImpl _$$PlaceImplFromJson(Map<String, dynamic> json) => _$PlaceImpl(
      id: json['id'] as String,
      name: json['name'] as String,
      thumbnailUrl: json['thumbnailUrl'] as String,
      title: json['title'] as String,
      openingHours: _$recordConvert(
        json['openingHours'],
        ($jsonValue) => (
          closeTime: const DateTimeConverter()
              .fromJson($jsonValue['closeTime'] as String),
          openTime: const DateTimeConverter()
              .fromJson($jsonValue['openTime'] as String),
        ),
      ),
      avevageAmount: json['avevageAmount'] as String,
      websiteUrl: json['websiteUrl'] == null
          ? null
          : Uri.parse(json['websiteUrl'] as String),
    );

Map<String, dynamic> _$$PlaceImplToJson(_$PlaceImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'thumbnailUrl': instance.thumbnailUrl,
      'title': instance.title,
      'openingHours': <String, dynamic>{
        'closeTime':
            const DateTimeConverter().toJson(instance.openingHours.closeTime),
        'openTime':
            const DateTimeConverter().toJson(instance.openingHours.openTime),
      },
      'avevageAmount': instance.avevageAmount,
      'websiteUrl': instance.websiteUrl?.toString(),
    };

$Rec _$recordConvert<$Rec>(
  Object? value,
  $Rec Function(Map) convert,
) =>
    convert(value as Map<String, dynamic>);
