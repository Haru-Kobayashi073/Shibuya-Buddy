import 'dart:async';
import 'dart:math' as math;

import 'package:riverpod_annotation/riverpod_annotation.dart';

import 'create_loading_state.dart';
import 'loading_text.dart';

part 'create_loading_notifier.g.dart';

@riverpod
class CreateLoadingView extends _$CreateLoadingView {
  Timer? _timer;

  @override
  CreateLoadingViewState build() {
    startAutoChange();
    return CreateLoadingViewState(
      loadingText: loadingTexts[loadingTexts.length - 1],
    );
  }

  void changeloadingText() {
    final random = math.Random();
    state = state.copyWith(
      loadingText: loadingTexts[random.nextInt(loadingTexts.length)],
    );
  }

  void startAutoChange() {
    _timer?.cancel();
    _timer = Timer.periodic(const Duration(seconds: 4), (timer) async {
      changeloadingText();
    });
  }

  Future<void> updateLoadingIndicator(int update) async {
    final progress = state.loadingIndicator;
    final newProgress = progress + update;
    state = state.copyWith(loadingIndicator: newProgress);
  }

  void resetLoadingIndicator() {
    state = state.copyWith(loadingIndicator: 0);
  }
}
