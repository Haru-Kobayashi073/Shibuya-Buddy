import 'package:flutter/material.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:uuid/uuid.dart';

import '../../domain/entities/chat_message.dart';
import '../../domain/entities/plan_prompt.dart';
import '../../domain/entities/user.dart';
import '../../i18n/strings.g.dart';
import '../../infrastructure/gemini/gemini_mock_data_source.dart';
import '../../utils/billing_grade_options.dart';
import '../../utils/providers/current_user/current_user.dart';
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
  bool get isStandardGradeUser =>
      ref.read(currentUserProvider).billingGrade == BillingGrade.standard;

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
      possibleChatCount:
          isStandardGradeUser ? BillingGradeOptions.possibleChatCount : null,
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
    state = AsyncValue.data(
      state.requireValue.copyWith(isLoadingForMessage: true),
    );
    try {
      await Future.delayed(const Duration(seconds: 3), () {});

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
          possibleChatCount: isStandardGradeUser
              ? state.requireValue.possibleChatCount! - 1
              : null,
        ),
      );
    } on Exception catch (_) {
      scaffoldMessenger.showExceptionSnackBar(
        t.buddyChatPage.snackBar.error.failedRecieveMessage,
      );
    } finally {
      state = AsyncValue.data(
        state.requireValue.copyWith(isLoadingForMessage: false),
      );
    }
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
