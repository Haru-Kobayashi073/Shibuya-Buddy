// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'purchase_recipt.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$PurchaseReciptImpl _$$PurchaseReciptImplFromJson(Map<String, dynamic> json) =>
    _$PurchaseReciptImpl(
      id: json['id'] as String,
      rankDownToStandardTaskPath: json['rankDownToStandardTaskPath'] as String?,
      premiumPlanExpirationDate: _$JsonConverterFromJson<String, DateTime>(
          json['premiumPlanExpirationDate'],
          const DateTimeConverter().fromJson),
    );

Map<String, dynamic> _$$PurchaseReciptImplToJson(
        _$PurchaseReciptImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'rankDownToStandardTaskPath': instance.rankDownToStandardTaskPath,
      'premiumPlanExpirationDate': _$JsonConverterToJson<String, DateTime>(
          instance.premiumPlanExpirationDate, const DateTimeConverter().toJson),
    };

Value? _$JsonConverterFromJson<Json, Value>(
  Object? json,
  Value? Function(Json json) fromJson,
) =>
    json == null ? null : fromJson(json as Json);

Json? _$JsonConverterToJson<Json, Value>(
  Value? value,
  Json? Function(Value value) toJson,
) =>
    value == null ? null : toJson(value);
