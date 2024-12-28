import 'package:flutter/material.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:uuid/uuid.dart';

import '../../domain/entities/chat_message.dart';
import '../../domain/entities/plan_prompt.dart';
import '../../domain/entities/user.dart';
import '../../i18n/strings.g.dart';
import '../../infrastructure/gemini/gemini_data_source.dart';
import '../../infrastructure/plan/plan_data_source.dart';
import '../../utils/billing_grade_options.dart';
import '../../utils/providers/current_user/current_user.dart';
import '../../utils/providers/scaffold_messenger/scaffold_messenger.dart'
    as scaffold_messenger;
import '../components/loading_overlay.dart';
import 'buddy_chat_page_state.dart';

part 'buddy_chat_page_notifier.g.dart';

@riverpod
class BuddyChatPageNotifier extends _$BuddyChatPageNotifier {
  GeminiDataSource get geminiDataSource =>
      ref.read(geminiDataSourceProvider.notifier);
  PlanDataSource get planDataSource =>
      ref.read(planDataSourceProvider.notifier);
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

    final buddyMessage =
        await geminiDataSource.sendPlanDetail(planPrompt: planPrompt);

    final messages = [
      buddyMessage.copyWith(
        plan: buddyMessage.plan?.copyWith(
          topics: [
            ...planPrompt.topics.where(
              (topic) => !buddyMessage.plan!.topics
                  .any((bTopic) => bTopic.name == topic.name),
            ),
            ...buddyMessage.plan!.topics,
          ],
        ),
      ),
    ];

    final message = ChatMessage(
      id: buddyMessage.id,
      message: buddyMessage.plan!.description,
      author: ChatAuthor.buddy,
      createdAt: buddyMessage.createdAt,
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
    await animateControllerWhenMessaging();
  }

  Future<void> recieveMessage({
    required String message,
    required void Function() onSuccess,
  }) async {
    state = AsyncValue.data(
      state.requireValue.copyWith(isLoadingForMessage: true),
    );
    try {
      final buddyMessage = await geminiDataSource.sendMessage(message: message);

      state = AsyncValue.data(
        state.requireValue.copyWith(
          messages: [...state.requireValue.messages, buddyMessage],
          possibleChatCount: isStandardGradeUser
              ? state.requireValue.possibleChatCount! - 1
              : null,
        ),
      );
      onSuccess();
    } on Exception catch (_) {
      scaffoldMessenger.showExceptionSnackBar(
        t.buddyChatPage.snackBar.error.failedRecieveMessage,
      );
    } finally {
      state = AsyncValue.data(
        state.requireValue.copyWith(isLoadingForMessage: false),
      );
      await animateControllerWhenMessaging();
    }
  }

  Future<void> completeCreatePlan({
    required Future<void> Function() onSuccess,
  }) async {
    ref.read(isShowLoadingOverlayProvider.notifier).state = true;
    try {
      final targetMessage = state.requireValue.messages.lastWhere(
        (message) => message.plan != null,
        orElse: () => state.requireValue.messages.first,
      );
      final targetPlan = targetMessage.plan!.copyWith(
        id: const Uuid().v4(),
        authorId: ref.read(currentUserProvider).uid,
        topics: targetMessage.plan!.topics
            .map(
              (topic) => topic.copyWith(
                id: const Uuid().v4(),
                createdAt: DateTime.now().toIso8601String(),
              ),
            )
            .toList(),
        createdAt: DateTime.now().toIso8601String(),
      );
      final targetPlaces = targetMessage.places!
          .map(
            (place) => place.copyWith(id: const Uuid().v4()),
          )
          .toList();
      await planDataSource.createPlan(
        plan: targetPlan,
        places: targetPlaces,
        planPrompt: planPrompt,
      );

      /// エラーが出るので、遅延を入れる
      await Future<void>.delayed(const Duration(milliseconds: 1000));

      await onSuccess();
    } on Exception catch (_) {
      scaffoldMessenger.showExceptionSnackBar(
        t.buddyChatPage.snackBar.error.failedCompleteCreatePlan,
      );
    } finally {
      ref.read(isShowLoadingOverlayProvider.notifier).state = false;
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
