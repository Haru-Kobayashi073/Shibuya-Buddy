import 'package:freezed_annotation/freezed_annotation.dart';

class DateTimeConverter implements JsonConverter<DateTime, String> {
  const DateTimeConverter();

  @override
  DateTime fromJson(String json) {
    return DateTime.parse(json)..toUtc().toIso8601String();
  }

  @override
  String toJson(DateTime dateTime) {
    return dateTime.toUtc().toIso8601String();
  }
}
