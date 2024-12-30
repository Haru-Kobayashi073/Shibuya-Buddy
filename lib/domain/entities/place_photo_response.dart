import 'package:freezed_annotation/freezed_annotation.dart';

part 'place_photo_response.freezed.dart';
part 'place_photo_response.g.dart';

@freezed
abstract class PlacePhotoResponse with _$PlacePhotoResponse {
  @JsonSerializable(fieldRename: FieldRename.snake)
  const factory PlacePhotoResponse({
    required String name,
    required String photoUri,
  }) = _PlacePhotoResponse;

  factory PlacePhotoResponse.fromJson(Map<String, dynamic> json) =>
      _$PlacePhotoResponseFromJson(json);
}
