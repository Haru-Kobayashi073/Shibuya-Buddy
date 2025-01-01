import 'package:freezed_annotation/freezed_annotation.dart';

import 'location.dart';

part 'place_detail_response.freezed.dart';
part 'place_detail_response.g.dart';

@freezed
abstract class PlaceDetailResponse with _$PlaceDetailResponse {
  @JsonSerializable(fieldRename: FieldRename.snake, explicitToJson: true)
  const factory PlaceDetailResponse({
    required List<GoogleMapPlaceDetail> places,
  }) = _PlaceDetailResponse;

  factory PlaceDetailResponse.fromJson(Map<String, dynamic> json) =>
      _$PlaceDetailResponseFromJson(json);
}

@freezed
abstract class GoogleMapPlaceDetail with _$GoogleMapPlaceDetail {
  @JsonSerializable(fieldRename: FieldRename.snake, explicitToJson: true)
  const factory GoogleMapPlaceDetail({
    required String name,
    required Location location,
    required List<PhotoDetail> photos,
  }) = _GoogleMapPlaceDetail;

  factory GoogleMapPlaceDetail.fromJson(Map<String, dynamic> json) =>
      _$GoogleMapPlaceDetailFromJson(json);
}

@freezed
abstract class PhotoDetail with _$PhotoDetail {
  @JsonSerializable(fieldRename: FieldRename.snake)
  const factory PhotoDetail({
    required String name,
    @JsonKey(name: 'widthPx') required int widthPx,
    @JsonKey(name: 'heightPx') required int heightPx,
  }) = _PhotoDetail;

  factory PhotoDetail.fromJson(Map<String, dynamic> json) =>
      _$PhotoDetailFromJson(json);
}
