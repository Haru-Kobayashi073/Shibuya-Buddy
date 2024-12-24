// ignore_for_file: lines_longer_than_80_chars long text

import 'package:freezed_annotation/freezed_annotation.dart';

import '../../utils/date_time_converter.dart';

part 'place.freezed.dart';
part 'place.g.dart';

@freezed
abstract class Place with _$Place {
  const factory Place({
    required String id,
    required String name,
    required String thumbnailUrl,
    required String title,
    @DateTimeConverter()
    required ({DateTime openTime, DateTime closeTime}) openingHours,
    required String avevageAmount,
    Uri? websiteUrl,
  }) = _Place;

  const Place._();

  factory Place.fromJson(Map<String, dynamic> json) => _$PlaceFromJson(json);

  String getParsedOpeningHours() {
    final openTime = openingHours.openTime;
    final closeTime = openingHours.closeTime;

    return '${openTime.hour.toString().padLeft(2, '0')}:${openTime.minute.toString().padLeft(2, '0')}～${closeTime.hour.toString().padLeft(2, '0')}:${closeTime.minute.toString().padLeft(2, '0')}';
  }
}
