// ignore_for_file: lines_longer_than_80_chars long text

import 'package:freezed_annotation/freezed_annotation.dart';

import 'coordinate.dart';

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
    required Coordinate coordinate,
    required OpeningHours openingHours,
    required String averageAmount,
    Uri? websiteUrl,
  }) = _Place;

  const Place._();

  factory Place.fromJson(Map<String, dynamic> json) => _$PlaceFromJson(json);

  String getParsedOpeningHours() {
    final openTime = openingHours.openTime;
    final closeTime = openingHours.closeTime;

    return '$openTime~$closeTime';
  }
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
