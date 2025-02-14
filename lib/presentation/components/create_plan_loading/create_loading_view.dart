import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:lottie/lottie.dart';

import '../../../gen/assets.gen.dart';
import '../../../utils/styles/app_color.dart';
import '../../../utils/styles/app_text_style.dart';
import 'create_loading_notifier.dart';

class CreateLoadingView extends ConsumerWidget {
  const CreateLoadingView({super.key, this.backgroundColor = Colors.white});
  final Color backgroundColor;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(createLoadingViewNotifierProvider);
    return Scaffold(
      backgroundColor: backgroundColor,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: Lottie.asset(
              Assets.lottie.animation1739357512444,
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
            child: Text(
              state.loadingText,
              textAlign: TextAlign.center,
              style: AppTextStyle.textStyle.copyWith(
                fontWeight: FontWeight.bold,
                fontSize: 14,
                color: AppColor.grey800,
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
