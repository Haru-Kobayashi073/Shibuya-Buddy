
import 'package:freezed_annotation/freezed_annotation.dart';

part 'coordinate.freezed.dart';
part 'coordinate.g.dart';

@freezed
abstract class Coordinate with _$Coordinate {
  @JsonSerializable(fieldRename: FieldRename.snake)
  const factory Coordinate({
    required double latitude,
    required double longitude,
  }) = _Coordinate;

  factory Coordinate.fromJson(Map<String, dynamic> json) =>
      _$CoordinateFromJson(json);
}
