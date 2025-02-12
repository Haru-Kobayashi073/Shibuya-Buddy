import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:lottie/lottie.dart';

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
    final state = ref.watch(createLoadingPageProvider);
    return Scaffold(
      backgroundColor: backgroundColor,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: Lottie.asset(
              'assets/lottie/Animation - 1739357512444.json',
              height: 250,
            ),
          ),
          Text(
            '${state.loadingIndicator}%',
            style: AppTextStyle.textStyle
                .copyWith(fontSize: 16, color: AppColor.grey800),
          ),
          const SizedBox(
            height: 16,
          ),
          Padding(
            padding: const EdgeInsets.only(
              left: 100,
              right: 100,
            ),
            child: LinearProgressIndicator(
              valueColor: const AlwaysStoppedAnimation<Color?>(
                AppColor.yellow600Primary,
              ),
              backgroundColor: AppColor.yellow200,
              minHeight: 10,
              borderRadius: const BorderRadius.all(Radius.circular(30)),
              value: state.loadingIndicator / 100,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(16),
            child: Align(
              child: Text(
                state.loadingText,
                style: AppTextStyle.textStyle.copyWith(
                  fontWeight: FontWeight.bold,
                  fontSize: 14,
                  color: AppColor.grey800,
                ),
              ),
            ),
          ),
          const SizedBox(
            height: 16,
          ),
        ],
      ),
    );
  }
}
