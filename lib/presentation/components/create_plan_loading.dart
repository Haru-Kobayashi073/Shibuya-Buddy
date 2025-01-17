import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:lottie/lottie.dart';

import '../../utils/styles/app_text_style.dart';

final isShowLoadingOverlayProvider = StateProvider.autoDispose((ref) => false);

class LoadingOverlay extends ConsumerWidget {
  const LoadingOverlay({
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
          child: CreatePlanLoading(),
        ),
      ),
    );
  }
}

class CreatePlanLoading extends StatelessWidget {
  const CreatePlanLoading({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Lottie.asset(
            'assets/lottie/Animation - 1736996724199.json',
            width: 80,
            height: 80,
          ),
          const SizedBox(
            height: 20,
          ),
          Text(
            'プランを作成しています...',
            style: AppTextStyle.textStyle.copyWith(
              fontSize: 16,
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
    );
  }
}
