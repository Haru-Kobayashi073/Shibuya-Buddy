// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'place.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$PlaceImpl _$$PlaceImplFromJson(Map<String, dynamic> json) => _$PlaceImpl(
      id: json['id'] as String? ?? '',
      name: json['name'] as String,
      thumbnailUrl: json['thumbnail_url'] as String,
      title: json['title'] as String,
      coordinate:
          Coordinate.fromJson(json['coordinate'] as Map<String, dynamic>),
      openingHours:
          OpeningHours.fromJson(json['opening_hours'] as Map<String, dynamic>),
      averageAmount: json['average_amount'] as String,
      websiteUrl: json['website_url'] == null
          ? null
          : Uri.parse(json['website_url'] as String),
    );

Map<String, dynamic> _$$PlaceImplToJson(_$PlaceImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'thumbnail_url': instance.thumbnailUrl,
      'title': instance.title,
      'coordinate': instance.coordinate.toJson(),
      'opening_hours': instance.openingHours.toJson(),
      'average_amount': instance.averageAmount,
      'website_url': instance.websiteUrl?.toString(),
    };

_$CoordinateImpl _$$CoordinateImplFromJson(Map<String, dynamic> json) =>
    _$CoordinateImpl(
      latitude: json['latitude'] as String,
      longitude: json['longitude'] as String,
    );

Map<String, dynamic> _$$CoordinateImplToJson(_$CoordinateImpl instance) =>
    <String, dynamic>{
      'latitude': instance.latitude,
      'longitude': instance.longitude,
    };

_$OpeningHoursImpl _$$OpeningHoursImplFromJson(Map<String, dynamic> json) =>
    _$OpeningHoursImpl(
      openTime: json['open_time'] as String,
      closeTime: json['close_time'] as String,
    );

Map<String, dynamic> _$$OpeningHoursImplToJson(_$OpeningHoursImpl instance) =>
    <String, dynamic>{
      'open_time': instance.openTime,
      'close_time': instance.closeTime,
    };
