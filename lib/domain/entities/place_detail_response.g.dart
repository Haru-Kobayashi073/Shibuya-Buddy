// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'place_detail_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$PlaceDetailResponseImpl _$$PlaceDetailResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$PlaceDetailResponseImpl(
      places: (json['places'] as List<dynamic>)
          .map((e) => GoogleMapPlaceDetail.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$PlaceDetailResponseImplToJson(
        _$PlaceDetailResponseImpl instance) =>
    <String, dynamic>{
      'places': instance.places.map((e) => e.toJson()).toList(),
    };

_$GoogleMapPlaceDetailImpl _$$GoogleMapPlaceDetailImplFromJson(
        Map<String, dynamic> json) =>
    _$GoogleMapPlaceDetailImpl(
      placeId: json['place_id'] as String,
      coordinate:
          Coordinate.fromJson(json['coordinate'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$GoogleMapPlaceDetailImplToJson(
        _$GoogleMapPlaceDetailImpl instance) =>
    <String, dynamic>{
      'place_id': instance.placeId,
      'coordinate': instance.coordinate.toJson(),
    };
