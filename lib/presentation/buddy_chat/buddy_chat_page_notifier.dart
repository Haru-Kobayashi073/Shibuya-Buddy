import 'package:flutter/material.dart';
import 'package:google_generative_ai/google_generative_ai.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:uuid/uuid.dart';

import '../../domain/entities/chat_message.dart';
import '../../domain/entities/place.dart';
import '../../domain/entities/plan_prompt.dart';
import '../../domain/entities/user.dart';
import '../../i18n/strings.g.dart';
import '../../infrastructure/gemini/gemini_data_source.dart';
import '../../infrastructure/place_detail/place_detail_data_source.dart';
import '../../infrastructure/plan/plan_data_source.dart';
import '../../utils/analytics_event.dart';
import '../../utils/billing_grade_options.dart';
import '../../utils/custom_logger.dart';
import '../../utils/extensions/context.dart';
import '../../utils/providers/analytics/analytics.dart';
import '../../utils/providers/current_user/current_user.dart';
import '../../utils/providers/geofence/geofence_service.dart';
import '../../utils/providers/scaffold_messenger/scaffold_messenger.dart'
    as scaffold_messenger;
import '../../utils/routes/app_router.dart';
import '../components/create_plan_loading/create_loading_notifier.dart';
import '../components/loading_overlay.dart';
import 'buddy_chat_page_state.dart';

part 'buddy_chat_page_notifier.g.dart';

@riverpod
class BuddyChatPageNotifier extends _$BuddyChatPageNotifier {
  GeminiDataSource get geminiDataSource =>
      ref.read(geminiDataSourceProvider.notifier);

  // GeminiMockDataSource get geminiDataSource =>
  //     ref.read(geminiMockDataSourceProvider.notifier);
  PlanDataSource get planDataSource =>
      ref.read(planDataSourceProvider.notifier);
  PlaceDetailDataSource get placeDetailDataSource =>
      ref.read(placeDetailDataSourceProvider.notifier);
  scaffold_messenger.ScaffoldMessenger get scaffoldMessenger =>
      ref.read(scaffold_messenger.scaffoldMessengerProvider.notifier);
  bool get isStandardGradeUser =>
      ref.read(currentUserProvider).billingGrade == BillingGrade.standard;

  CreateLoadingViewNotifier get loadingNotifier =>
      ref.read(createLoadingViewNotifierProvider.notifier);

  GeofenceService get geofenceService =>
      ref.read(geofenceServiceProvider.notifier);

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
      await ref
          .read(analyticsNotifierProvider.notifier)
          .logEvent(UserActionEvent.chatLimitReached);
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

      final buddyMessage = await _getAllFilledMessage(
        res,
        forFirstBuild: false,
      );

      state = AsyncValue.data(
        state.requireValue.copyWith(
          messages: [...state.requireValue.messages, buddyMessage],
          possibleChatCount: state.requireValue.messages.length == 3
              ? isStandardGradeUser
                  ? BillingGradeOptions.possibleChatCount - 1
                  : null
              : isStandardGradeUser
                  ? state.requireValue.possibleChatCount! - 1
                  : null,
        ),
      );
    } on Exception catch (e) {
      logger.e('recieveMessage: $e');
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
      final buddyMessageCount = state.requireValue.messages
          .where((message) => message.author == ChatAuthor.buddy)
          .length;

      await ref.read(analyticsNotifierProvider.notifier).logEvent(
        UserActionEvent.completeCreatePlan,
        parameters: {'buddy_message_count': buddyMessageCount},
      );

      final targetMessage = state.requireValue.messages.lastWhere(
        (message) => message.plan != null && message.places != null,
        orElse: () => state.requireValue.messages.first,
      );
      final targetPlan = targetMessage.plan!.copyWith(
        id: const Uuid().v4(),
        authorId: ref.read(currentUserProvider).uid,
        topics: planPrompt.topics,
        createdAt: DateTime.now().toIso8601String(),
      );
      final targetPlaces = targetMessage.places!
          .map(
            (place) => place.copyWith(id: const Uuid().v4()),
          )
          .toList();

      await addGeofences(targetPlaces);

      await planDataSource.createPlan(
        plan: targetPlan,
        places: targetPlaces,
        planPrompt: planPrompt,
      );

      /// エラーが出るので、遅延を入れる
      await Future<void>.delayed(const Duration(milliseconds: 1000));

      await onSuccess();
    } on Exception catch (e) {
      logger.e('completeCreatePlan: $e');
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
    await Future.microtask(() => loadingNotifier.updateLoadingIndicator(0));
    final scrollController = ScrollController();

    ref.onDispose(scrollController.dispose);

    ChatMessage? res;
    const maxRetries = 3;
    var retryCount = 0;

    while (retryCount < maxRetries) {
      try {
        res = await geminiDataSource.sendPlanDetail(planPrompt: planPrompt);

        if (res.places != null && res.plan != null) {
          break;
        }
      } on GenerativeAIException catch (e) {
        debugPrint('${retryCount + 1} 回目失敗: $e');
      }

      retryCount++;

      if (retryCount < maxRetries) {
        debugPrint('再執行($retryCount/$maxRetries)');
        await Future<void>.delayed(const Duration(seconds: 1));
      }
    }
    if (res == null || res.places == null || res.plan == null) {
      debugPrint('Failed to fetch response after $maxRetries attempts.');
      throw Exception('Failed to fetch AI response.');
    }

    final buddyMessage = await _getAllFilledMessage(res, forFirstBuild: true);
    final message = ChatMessage(
      id: buddyMessage.id,
      message: buddyMessage.plan!.description,
      author: ChatAuthor.buddy,
      createdAt: buddyMessage.createdAt,
    );
    final messages = [buddyMessage, message];
    return BuddyChatPageState(
      messages: messages,
      possibleChatCount: null,
      scrollController: scrollController,
    );
  }

  Future<ChatMessage> _getAllFilledMessage(
    ChatMessage chatMessage, {
    required bool forFirstBuild,
  }) async {
    var placeIds = <String>[];
    var photoUrls = <String>[];

    /// 検索したい写真の名前をリスト化
    final placeDetailStrings = <String>[
      if (forFirstBuild) ...[
        ...chatMessage.places?.map((place) => place.name) ?? [],
      ] else ...[
        /// すでに表示されている場所の名前をのぞいた、検索したい写真の名前をリスト化
        ...getPlaceNamesWithoutAlreadySearched(chatMessage) ?? [],
      ],
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
      debugPrint('Error in by _getAllFilledMessage: $e');
    }
    if (forFirstBuild) {
      return chatMessage.copyWith(
        plan: chatMessage.plan?.copyWith(
          thumbnailUrl: photoUrls[0],
          topics: planPrompt.topics,
        ),
        places: chatMessage.places?.asMap().entries.map(
          (entry) {
            final place = entry.value;
            return place.copyWith(
              thumbnailUrl: photoUrls[entry.key],
            );
          },
        ).toList(),
      );
    } else {
      // 最初のメッセージ以外の場合
      return _setChatmessageFields(
        chatMessage,
        photoUrls,
        placeDetailStrings,
      );
    }
  }

  List<String>? getPlaceNamesWithoutAlreadySearched(ChatMessage chatMessage) {
    final alreadySearchedPlaceNames = state.requireValue.messages
        .lastWhere((message) => message.places != null)
        .places
        ?.map((place) => place.name)
        .toList();

    return chatMessage.places
        ?.where((place) => !alreadySearchedPlaceNames!.contains(place.name))
        .map((place) => place.name)
        .toList();
  }

  ChatMessage _setChatmessageFields(
    ChatMessage chatMessage,
    List<String> photoUrls,
    List<String> placeDetailStrings,
  ) {
    final lastMessage = state.requireValue.messages.lastWhere(
      (message) => message.plan != null && message.places != null,
    );
    // すでに表示されている場所の数 + 新しく検索した文字列の合計が、これから表示する場所の数と一致する場合
    // 新しく検索した文字列を元に取得した写真のURLを、新しく検索した場所の写真のURLとして上書き追加
    if (lastMessage.places!.length + placeDetailStrings.length ==
        chatMessage.places!.length) {
      return chatMessage.copyWith(
        plan: chatMessage.plan?.copyWith(
          thumbnailUrl: lastMessage.plan!.thumbnailUrl,
        ),
        places: [
          ...lastMessage.places!,
          ...chatMessage.places!
              .where(
            (place) =>
                !lastMessage.places!.map((e) => e.name).contains(place.name),
          )
              .map(
            (place) {
              return place.copyWith(
                thumbnailUrl: photoUrls[chatMessage.places!.indexOf(place) -
                    lastMessage.places!.length],
              );
            },
          ),
        ],
      );
    } else {
      // 一つ目の場所から全てが新しく検索されている場合
      // 新しく検索した文字列を元に取得した写真のURLを、新しく検索した場所の写真のURLとして上書き追加

      return chatMessage.copyWith(
        plan: chatMessage.plan?.copyWith(
          thumbnailUrl: photoUrls[0],
        ),
        places: [
          ...chatMessage.places!.asMap().entries.map(
            (entry) {
              final place = entry.value;
              return place.copyWith(
                thumbnailUrl: photoUrls[entry.key],
              );
            },
          ),
        ],
      );
    }
  }

  void changeStandardConfigToPremium() {
    state = AsyncValue.data(
      state.requireValue.copyWith(
        possibleChatCount: null,
      ),
    );
  }

  Future<void> addGeofences(List<Place> places) async {
    for (final place in places) {
      await geofenceService.addGeofence(
        id: place.id,
        location: Location(
          latitude: place.location.latitude,
          longitude: place.location.longitude,
        ),
      );
    }

    await geofenceService.getRegisteredGeofences();
  }
}
