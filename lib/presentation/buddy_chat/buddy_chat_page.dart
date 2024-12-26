import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:lottie/lottie.dart';

import '../../domain/entities/chat_message.dart';
import '../../domain/entities/plan_prompt.dart';
import '../../gen/assets.gen.dart';
import '../../i18n/strings.g.dart';
import '../../utils/hooks/use_form_state_key.dart';
import '../../utils/styles/app_color.dart';
import '../../utils/styles/app_text_style.dart';
import '../../utils/validator.dart';
import '../components/confirm_dialog.dart';
import '../components/loading_overlay.dart';
import 'buddy_chat_page_notifier.dart';
import 'components/message_card.dart';

class BuddyChatPage extends HookConsumerWidget {
  const BuddyChatPage({
    super.key,
    required this.planPrompt,
  });
  final PlanPrompt planPrompt;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final i18n = Translations.of(context);
    final buddyChatPagei18n = i18n.buddyChatPage;
    final state =
        ref.watch(buddyChatPageNotifierProvider(planPrompt: planPrompt));
    final notifier = ref
        .read(buddyChatPageNotifierProvider(planPrompt: planPrompt).notifier);
    final formKey = useFormStateKey();
    final textController = useTextEditingController();

    Future<void> sendMessage() async {
      if (formKey.currentState!.validate()) {
        if (textController.text.isEmpty) {
          return;
        }
        await notifier
            .sendMessage(
          message: textController.text,
        )
            .then((value) async {
          await notifier.animateControllerWhenMessaging();
        });
        await notifier
            .recieveMessage(message: textController.text)
            .then((value) {
          textController.clear();
          notifier.animateControllerWhenMessaging();
        });
      }
    }

    return PopScope(
      canPop: false,
      onPopInvokedWithResult: (didPop, _) async {
        if (!didPop) {
          await showDialog<void>(
            context: context,
            builder: (_) => ConfirmDialog(
              onConfirm: () => context.pop(),
              titleText: '前の画面に戻りますか？',
              bodyText: '現在の内容は保存されません。',
            ),
          );
        }
      },
      child: state.when(
        data: (value) {
          return Scaffold(
            appBar: AppBar(
              centerTitle: false,
              title: Text(
                buddyChatPagei18n.title,
                style: AppTextStyle.textStyle.copyWith(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: AppColor.black,
                ),
              ),
              actions: [
                FilledButton.icon(
                  style: FilledButton.styleFrom(
                    backgroundColor: AppColor.yellow600Primary,
                  ),
                  onPressed: () {},
                  icon: const Icon(
                    Icons.check,
                    color: AppColor.black,
                  ),
                  label: Text(
                    buddyChatPagei18n.buttons.send,
                    style: AppTextStyle.textStyle.copyWith(
                      fontSize: 14,
                      color: AppColor.black,
                    ),
                  ),
                ),
                const SizedBox(width: 16),
              ],
            ),
            body: SafeArea(
              child: Form(
                key: formKey,
                child: Column(
                  children: [
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 16),
                        child: CustomScrollView(
                          controller: value.scrollController,
                          slivers: [
                            ...value.messages.map(_buildChatMessage),
                            if (value.possibleChatCount != null)
                              _possibleChatCountText(value.possibleChatCount!),
                          ],
                        ),
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.symmetric(horizontal: 16),
                      padding: const EdgeInsets.symmetric(vertical: 8),
                      decoration: BoxDecoration(
                        color: AppColor.grey200,
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: Row(
                        children: [
                          Expanded(
                            child: IntrinsicHeight(
                              child: TextFormField(
                                expands: true,
                                maxLines: null,
                                cursorColor: AppColor.black,
                                keyboardType: TextInputType.multiline,
                                validator: Validator.common,
                                maxLength: 256,
                                controller: textController,
                                onFieldSubmitted: (_) async => sendMessage(),
                                decoration: InputDecoration(
                                  counter: const SizedBox.shrink(),
                                  filled: true,
                                  fillColor: AppColor.grey200,
                                  border: const OutlineInputBorder(
                                    borderSide: BorderSide.none,
                                  ),
                                  hintText:
                                      buddyChatPagei18n.textFields.message,
                                ),
                              ),
                            ),
                          ),
                          const SizedBox(width: 8),
                          if (value.isLoadingForMessage)
                            Lottie.asset(
                              Assets.lottie.animation1734615191322,
                              width: 48,
                              height: 48,
                            )
                          else
                            IconButton(
                              onPressed: () async => sendMessage(),
                              icon: const Icon(Icons.send),
                            ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          );
        },
        error: (_, __) => const SizedBox.shrink(),
        loading: () => const Loading(),
      ),
    );
  }
}

Widget _buildChatMessage(ChatMessage chatMessage) {
  return SliverToBoxAdapter(
    child: MessageCard(chatMessage: chatMessage),
  );
}

Widget _possibleChatCountText(int possibleChatCount) {
  return SliverToBoxAdapter(
    child: Padding(
      padding: const EdgeInsets.only(bottom: 8),
      child: Row(
        children: [
          const Expanded(
            child: Divider(color: AppColor.grey600),
          ),
          Text(
            t.buddyChatPage
                .possibleChatCount(possibleChatCount: possibleChatCount),
            style: AppTextStyle.textStyle.copyWith(
              color: AppColor.grey600,
            ),
          ),
          const Expanded(
            child: Divider(color: AppColor.grey600),
          ),
        ],
      ),
    ),
  );
}
