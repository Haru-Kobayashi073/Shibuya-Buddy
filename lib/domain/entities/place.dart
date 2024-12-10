import 'package:freezed_annotation/freezed_annotation.dart';

import '../../utils/date_time_converter.dart';

part 'place.freezed.dart';
part 'place.g.dart';

@freezed
abstract class Place with _$Place {
  const factory Place({
    required String id,
    required String name,
    required Uri thumbnailUrl,
    required String title,
    @DateTimeConverter()
    required ({DateTime openTime, DateTime closeTime}) openingHours,
    required String avevageAmount,
    Uri? websiteUrl,
  }) = _Place;

  factory Place.fromJson(Map<String, dynamic> json) => _$PlaceFromJson(json);
}
