import 'package:freezed_annotation/freezed_annotation.dart';
import '../../utils/date_time_converter.dart';

part 'place.freezed.dart';
part 'place.g.dart';

@freezed
abstract class Place with _$Place {
  @JsonSerializable(fieldRename: FieldRename.snake, explicitToJson: true)
  const factory Place({
    @Default('') String id,
    required String name,
    required String thumbnailUrl,
    required String title,
    Coordinate? coordinate,
    OpeningHours? openingHours,
    String? averageAmount,
    Uri? websiteUrl,
    List<String>? tags,
  }) = _Place;

  const Place._();
  factory Place.fromJson(Map<String, dynamic> json) => _$PlaceFromJson(json);

  String getParsedOpeningHours() {
    final openTime = openingHours?.openTime;
    final closeTime = openingHours?.closeTime;

    return '$openTime~$closeTime';
  }
}

@freezed
abstract class Coordinate with _$Coordinate {
  @JsonSerializable(fieldRename: FieldRename.snake)
  const factory Coordinate({
    required String latitude,
    required String longitude,
  }) = _Coordinate;

  factory Coordinate.fromJson(Map<String, dynamic> json) =>
      _$CoordinateFromJson(json);
}

@freezed
abstract class OpeningHours with _$OpeningHours {
  @JsonSerializable(fieldRename: FieldRename.snake)
  const factory OpeningHours({
    required String openTime,
    required String closeTime,
  }) = _OpeningHours;

  factory OpeningHours.fromJson(Map<String, dynamic> json) =>
       _$OpeningHoursFromJson(json);
}
