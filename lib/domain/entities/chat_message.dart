import 'package:freezed_annotation/freezed_annotation.dart';

import '../../utils/date_time_converter.dart';
import 'place.dart';
import 'plan.dart';

part 'chat_message.freezed.dart';
part 'chat_message.g.dart';

@freezed
abstract class ChatMessage with _$ChatMessage {
  const factory ChatMessage({
    required String id,
    required String message,
    required ChatAuthor author,
    Plan? plan,
    List<Place>? places,
    @DateTimeConverter() required DateTime createdAt,
  }) = _ChatMessage;

  factory ChatMessage.fromJson(Map<String, dynamic> json) =>
      _$ChatMessageFromJson(json);
}

enum ChatAuthor { user, buddy }
