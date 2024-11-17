import 'package:flutter/material.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'scaffold_messenger.g.dart';

@Riverpod(keepAlive: true)
GlobalKey<ScaffoldMessengerState> scaffoldMessengerKey(
  ScaffoldMessengerKeyRef ref,
) {
  return GlobalKey<ScaffoldMessengerState>();
}

@riverpod
class ScaffoldMessenger extends _$ScaffoldMessenger {
  GlobalKey<ScaffoldMessengerState> get scaffoldKey =>
      ref.read(scaffoldMessengerKeyProvider);

  @override
  void build() {
    return;
  }

  /// スナックバーを表示する。
  ScaffoldFeatureController<SnackBar, SnackBarClosedReason> showSuccessSnackBar(
    String message, {
    bool removeCurrentSnackBar = true,
    Duration duration = const Duration(seconds: 3),
  }) {
    final scaffoldMessengerState = scaffoldKey.currentState!;
    if (removeCurrentSnackBar) {
      scaffoldMessengerState.removeCurrentSnackBar();
    }
    return scaffoldMessengerState.showSnackBar(
      SnackBar(
        content: Text(message),
        duration: duration,
      ),
    );
  }

  ScaffoldFeatureController<SnackBar, SnackBarClosedReason>
      showExceptionSnackBar(
    String message, {
    bool removeCurrentSnackBar = true,
    Duration duration = const Duration(seconds: 3),
  }) {
    final scaffoldMessengerState = scaffoldKey.currentState!;
    if (removeCurrentSnackBar) {
      scaffoldMessengerState.removeCurrentSnackBar();
    }
    return scaffoldMessengerState.showSnackBar(
      SnackBar(
        content: Text(message),
        duration: duration,
      ),
    );
  }
}
