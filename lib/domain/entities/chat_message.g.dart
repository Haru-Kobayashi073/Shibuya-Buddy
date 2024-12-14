// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'chat_message.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ChatMessageImpl _$$ChatMessageImplFromJson(Map<String, dynamic> json) =>
    _$ChatMessageImpl(
      id: json['id'] as String,
      message: json['message'] as String,
      author: $enumDecode(_$ChatAuthorEnumMap, json['author']),
      plan: json['plan'] == null
          ? null
          : Plan.fromJson(json['plan'] as Map<String, dynamic>),
      places: (json['places'] as List<dynamic>?)
          ?.map((e) => Place.fromJson(e as Map<String, dynamic>))
          .toList(),
      createdAt:
          const DateTimeConverter().fromJson(json['createdAt'] as String),
    );

Map<String, dynamic> _$$ChatMessageImplToJson(_$ChatMessageImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'message': instance.message,
      'author': _$ChatAuthorEnumMap[instance.author]!,
      'plan': instance.plan,
      'places': instance.places,
      'createdAt': const DateTimeConverter().toJson(instance.createdAt),
    };

const _$ChatAuthorEnumMap = {
  ChatAuthor.user: 'user',
  ChatAuthor.buddy: 'buddy',
};
