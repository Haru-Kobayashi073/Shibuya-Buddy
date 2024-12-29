// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'gemini_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$GeminiResponseImpl _$$GeminiResponseImplFromJson(Map<String, dynamic> json) =>
    _$GeminiResponseImpl(
      response:
          ResponseScheme.fromJson(json['response'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$GeminiResponseImplToJson(
        _$GeminiResponseImpl instance) =>
    <String, dynamic>{
      'response': instance.response,
    };

_$ResponseSchemeImpl _$$ResponseSchemeImplFromJson(Map<String, dynamic> json) =>
    _$ResponseSchemeImpl(
      languageCode: json['language_code'] as String,
      message: json['message'] as String,
      plan: Plan.fromJson(json['plan'] as Map<String, dynamic>),
      places: (json['places'] as List<dynamic>)
          .map((e) => Place.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$ResponseSchemeImplToJson(
        _$ResponseSchemeImpl instance) =>
    <String, dynamic>{
      'language_code': instance.languageCode,
      'message': instance.message,
      'plan': instance.plan,
      'places': instance.places,
    };
