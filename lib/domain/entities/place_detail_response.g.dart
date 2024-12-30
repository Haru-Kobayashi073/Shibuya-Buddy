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
      name: json['name'] as String,
      location: Coordinate.fromJson(json['location'] as Map<String, dynamic>),
      photos: (json['photos'] as List<dynamic>)
          .map((e) => PhotoDetail.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$GoogleMapPlaceDetailImplToJson(
        _$GoogleMapPlaceDetailImpl instance) =>
    <String, dynamic>{
      'name': instance.name,
      'location': instance.location.toJson(),
      'photos': instance.photos.map((e) => e.toJson()).toList(),
    };

_$PhotoDetailImpl _$$PhotoDetailImplFromJson(Map<String, dynamic> json) =>
    _$PhotoDetailImpl(
      name: json['name'] as String,
      widthPx: (json['width_px'] as num).toInt(),
      heightPx: (json['height_px'] as num).toInt(),
    );

Map<String, dynamic> _$$PhotoDetailImplToJson(_$PhotoDetailImpl instance) =>
    <String, dynamic>{
      'name': instance.name,
      'width_px': instance.widthPx,
      'height_px': instance.heightPx,
    };
