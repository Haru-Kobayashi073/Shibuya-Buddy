import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../utils/styles/app_color.dart';
import '../../utils/styles/app_text_style.dart';
import 'create_loading_notifier.dart';

final isShowLoadingOverlayProvider = StateProvider.autoDispose((ref) => false);

class CreateLoadingOverlay extends ConsumerWidget {
  const CreateLoadingOverlay({
    super.key,
    this.backgroundColor = Colors.black26,
  });

  final Color backgroundColor;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final overlayLoading = ref.watch(isShowLoadingOverlayProvider);

    return Visibility(
      visible: overlayLoading,
      child: ColoredBox(
        color: backgroundColor,
        child: const SizedBox.expand(
          child: CreateLoading(backgroundColor: Colors.transparent),
        ),
      ),
    );
  }
}

class CreateLoading extends ConsumerWidget {
  const CreateLoading({super.key, this.backgroundColor = Colors.white});
  final Color backgroundColor;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final loadingNotifier = ref.watch(createLoadingPageProvider.notifier);
    final state = ref.watch(createLoadingPageProvider);
    loadingNotifier.startAutoChange();
    return Scaffold(
      backgroundColor: backgroundColor,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          // Center(
          //   child: Lottie.asset(
          //     Assets.lottie.animation1736996724199,
          //     width: 80,
          //     height: 80,
          //   ),
          // ),
          Text(
            '${state.loadingIndicator}%',
            style: AppTextStyle.textStyle.copyWith(fontSize: 16),
          ),
          const SizedBox(
            height: 50,
          ),
          Padding(
            padding: const EdgeInsets.all(16),
            child: Align(
              child: Text(
                state.loadingText,
                style: AppTextStyle.textStyle.copyWith(
                  fontWeight: FontWeight.bold,
                  fontSize: 12,
                  color: AppColor.grey800,
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(
              left: 64,
              right: 64,
            ),
            child: LinearProgressIndicator(
              value: state.loadingIndicator / 100,
            ),
          ),
        ],
      ),
    );
  }
}
