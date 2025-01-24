import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:lottie/lottie.dart';

import '../../gen/assets.gen.dart';

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
          child: Loading(),
        ),
      ),
    );
  }
}

class Loading extends StatelessWidget {
  const Loading({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: Center(
        child: Lottie.asset(
          Assets.lottie.animation1736996724199,
          width: 80,
          height: 80,
        ),
      ),
    );
  }
}
