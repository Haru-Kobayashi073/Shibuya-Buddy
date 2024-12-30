import 'package:freezed_annotation/freezed_annotation.dart';

import 'place.dart';
import 'plan.dart';

part 'gemini_response.freezed.dart';
part 'gemini_response.g.dart';

@freezed
abstract class GeminiResponse with _$GeminiResponse {
  @JsonSerializable(fieldRename: FieldRename.snake)
  const factory GeminiResponse({
    required ResponseScheme response,
  }) = _GeminiResponse;

  factory GeminiResponse.fromJson(Map<String, dynamic> json) =>
      _$GeminiResponseFromJson(json);
}

@freezed
abstract class ResponseScheme with _$ResponseScheme {
  @JsonSerializable(fieldRename: FieldRename.snake)
  const factory ResponseScheme({
    required String languageCode,
    required String message,
    required Plan plan,
    required List<Place> places,
  }) = _ResponseScheme;

  factory ResponseScheme.fromJson(Map<String, dynamic> json) =>
      _$ResponseSchemeFromJson(json);
}
