import 'dart:async';
import 'dart:math' as math;

import 'package:riverpod_annotation/riverpod_annotation.dart';

import 'create_loading_state.dart';
import 'loading_text.dart';

part 'create_loading_notifier.g.dart';

@riverpod
class CreateLoadingPage extends _$CreateLoadingPage {
  Timer? _timer;
  @override
  CreateloadingPageState build() {
    return CreateloadingPageState(
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
    _timer = Timer.periodic(const Duration(seconds: 3), (timer) {
      changeloadingText();
      if (updateLoadingIndicator(1) > 100) {
        resetLoadingIndicator();
      } //仮
    });
  }

  int updateLoadingIndicator(int update) {
    final progress = state.loadingIndicator;
    state = state.copyWith(loadingIndicator: update + progress);
    return update + progress;
  }

  void resetLoadingIndicator() {
    state = state.copyWith(loadingIndicator: 0);
  }
}
