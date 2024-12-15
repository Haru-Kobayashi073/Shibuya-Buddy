import 'package:flutter/material.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:uuid/uuid.dart';

import '../../domain/entities/chat_message.dart';
import '../../domain/entities/plan_prompt.dart';
import '../../infrastructure/gemini/gemini_mock_data_source.dart';
import '../../utils/providers/scaffold_messenger/scaffold_messenger.dart'
    as scaffold_messenger;
import 'buddy_chat_page_state.dart';

part 'buddy_chat_page_notifier.g.dart';

@riverpod
class BuddyChatPageNotifier extends _$BuddyChatPageNotifier {
  GeminiMockDataSource get geminiDataSource =>
      ref.read(geminiMockDataSourceProvider.notifier);
  scaffold_messenger.ScaffoldMessenger get scaffoldMessenger =>
      ref.read(scaffold_messenger.scaffoldMessengerProvider.notifier);

  @override
  Future<BuddyChatPageState> build({required PlanPrompt planPrompt}) async {
    final scrollController = ScrollController();

    ref.onDispose(
      scrollController.dispose,
    );

    final res = await geminiDataSource.sendPlanDetail(planPrompt: planPrompt);

    final messages = [
      ChatMessage(
        id: res.id,
        author: res.author,
        plan: res.plan,
        places: res.places,
        createdAt: res.createdAt,
        message: res.message,
      ),
    ];

    final message = ChatMessage(
      id: res.id,
      message: res.plan!.description,
      author: ChatAuthor.buddy,
      createdAt: res.createdAt,
    );

    messages.add(message);

    return BuddyChatPageState(
      messages: messages,
      scrollController: scrollController,
    );
  }

  Future<void> sendMessage({required String message}) async {
    final userMessage = ChatMessage(
      id: const Uuid().v4(),
      author: ChatAuthor.user,
      message: message,
      createdAt: DateTime.now(),
    );

    state = AsyncValue.data(
      state.requireValue.copyWith(
        messages: [...state.requireValue.messages, userMessage],
      ),
    );
  }

  Future<void> recieveMessage({required String message}) async {
    await Future.delayed(const Duration(seconds: 1), () {});

    final res = await geminiDataSource.sendMessage(message: message);

    final buddyMessage = ChatMessage(
      id: res.id,
      author: res.author,
      message: res.message,
      createdAt: res.createdAt,
    );

    state = AsyncValue.data(
      state.requireValue.copyWith(
        messages: [...state.requireValue.messages, buddyMessage],
      ),
    );
  }

  Future<void> animateControllerWhenMessaging() async {
    Future.delayed(
      const Duration(milliseconds: 100),
      () async {
        if (state.requireValue.scrollController.hasClients) {
          await state.requireValue.scrollController.animateTo(
            state.requireValue.scrollController.position.maxScrollExtent,
            duration: const Duration(milliseconds: 300),
            curve: Curves.easeInOut,
          );
        }
      },
    );
  }
}
