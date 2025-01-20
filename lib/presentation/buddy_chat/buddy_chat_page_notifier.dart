import 'package:flutter/material.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:uuid/uuid.dart';

import '../../domain/entities/chat_message.dart';
import '../../domain/entities/plan_prompt.dart';
import '../../domain/entities/user.dart';
import '../../i18n/strings.g.dart';
import '../../infrastructure/gemini/gemini_data_source.dart';
import '../../infrastructure/place_detail/place_detail_data_source.dart';
import '../../infrastructure/plan/plan_data_source.dart';
import '../../utils/billing_grade_options.dart';
import '../../utils/extensions/context.dart';
import '../../utils/providers/current_user/current_user.dart';
import '../../utils/providers/scaffold_messenger/scaffold_messenger.dart'
    as scaffold_messenger;
import '../../utils/routes/app_router.dart';
import '../components/loading_overlay.dart';
import 'buddy_chat_page_state.dart';

part 'buddy_chat_page_notifier.g.dart';

@riverpod
class BuddyChatPageNotifier extends _$BuddyChatPageNotifier {
  GeminiDataSource get geminiDataSource =>
      ref.read(geminiDataSourceProvider.notifier);
  PlanDataSource get planDataSource =>
      ref.read(planDataSourceProvider.notifier);
  PlaceDetailDataSource get placeDetailDataSource =>
      ref.read(placeDetailDataSourceProvider.notifier);
  scaffold_messenger.ScaffoldMessenger get scaffoldMessenger =>
      ref.read(scaffold_messenger.scaffoldMessengerProvider.notifier);
  bool get isStandardGradeUser =>
      ref.watch(currentUserProvider).billingGrade == BillingGrade.standard;

  @override
  Future<BuddyChatPageState> build({required PlanPrompt planPrompt}) async {
    return _getFirstBuddyMessage();
  }

  Future<void> sendMessage({
    required String message,
    required void Function() onSuccess,
    required void Function() needUpgradeToPremium,
  }) async {
    if (isStandardGradeUser && state.requireValue.possibleChatCount == 0) {
      needUpgradeToPremium();
      return;
    }
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
    onSuccess();
    await animateControllerWhenMessaging(isBuddy: false);

    await _recieveMessage(message: message);
  }

  Future<void> _recieveMessage({
    required String message,
  }) async {
    state = AsyncValue.data(
      state.requireValue.copyWith(isLoadingForMessage: true),
    );
    try {
      final res = await geminiDataSource.sendMessage(message: message);

      final buddyMessage = await _getAllFilledMessage(res);

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
      await animateControllerWhenMessaging(isBuddy: true);
    }
  }

  Future<void> completeCreatePlan({
    required Future<void> Function() onSuccess,
  }) async {
    ref.read(isShowLoadingOverlayProvider.notifier).state = true;
    try {
      final targetMessage = state.requireValue.messages.lastWhere(
        (message) => message.plan != null && message.places != null,
        orElse: () => state.requireValue.messages.first,
      );
      final targetPlan = targetMessage.plan!.copyWith(
        id: const Uuid().v4(),
        authorId: ref.read(currentUserProvider).uid,
        topics: targetMessage.plan!.topics,
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

  Future<void> animateControllerWhenMessaging({required bool isBuddy}) async {
    final scrollController = state.requireValue.scrollController;
    final currentPixel = scrollController.position.pixels;
    final planCardHeight = rootNavigatorKey.currentContext!.deviceHeight * 0.4;

    Future.delayed(
      const Duration(milliseconds: 100),
      () async {
        if (scrollController.hasClients) {
          await scrollController.animateTo(
            isBuddy
                ? currentPixel + planCardHeight
                : scrollController.position.maxScrollExtent,
            duration: const Duration(milliseconds: 300),
            curve: Curves.easeInOut,
          );
        }
      },
    );
  }

  Future<BuddyChatPageState> _getFirstBuddyMessage() async {
    final scrollController = ScrollController();

    ref.onDispose(
      scrollController.dispose,
    );

    final res = await geminiDataSource.sendPlanDetail(planPrompt: planPrompt);

    final buddyMessage = await _getAllFilledMessage(res);

    final message = ChatMessage(
      id: buddyMessage.id,
      message: buddyMessage.plan!.description,
      author: ChatAuthor.buddy,
      createdAt: buddyMessage.createdAt,
    );

    final messages = [buddyMessage, message];

    return BuddyChatPageState(
      messages: messages,
      possibleChatCount:
          isStandardGradeUser ? BillingGradeOptions.possibleChatCount : null,
      scrollController: scrollController,
    );
  }

  Future<ChatMessage> _getAllFilledMessage(ChatMessage chatMessage) async {
    var placeIds = <String>[];
    var photoUrls = <String>[];

    /// 検索したい写真の名前をリスト化
    final placeDetailStrings = <String>[
      chatMessage.plan?.title ?? '',
      ...chatMessage.places?.map((place) => place.name) ?? [],
    ];

    try {
      /// 検索したい写真の名前のリストを元に、各々のplaceIdを取得
      placeIds = await placeDetailDataSource.getSearchPlaceIds(
        placeNameList: placeDetailStrings,
      );

      /// placeIdを元に、各々の写真のURLを取得
      photoUrls = await placeDetailDataSource.getPlacesPhotoUrls(
        placeIds: placeIds,
      );
    } on Exception catch (e) {
      debugPrint('Error in buddyChatPageNotifier by _getAllFilledMessage: $e');
    }
    return chatMessage.copyWith(
      plan: chatMessage.plan?.copyWith(
        thumbnailUrl: photoUrls[0],
        topics: planPrompt.topics,
      ),
      places: chatMessage.places?.asMap().entries.map(
        (entry) {
          final place = entry.value;
          return place.copyWith(
            thumbnailUrl: photoUrls[entry.key + 1],
          );
        },
      ).toList(),
    );
  }
}
