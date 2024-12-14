import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../domain/entities/chat_message.dart';

part 'buddy_chat_page_state.freezed.dart';

@freezed
abstract class BuddyChatPageState with _$BuddyChatPageState {
  const factory BuddyChatPageState({
    required List<ChatMessage> messages,
    required ScrollController scrollController,
  }) = _BuddyChatPageState;
}
