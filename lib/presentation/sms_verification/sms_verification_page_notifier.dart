import 'dart:async';

import 'package:flutter/material.dart' hide ScaffoldMessenger;
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../infrastructure/authentication/authentication_data_source.dart';
import '../../utils/providers/scaffold_messenger/scaffold_messenger.dart';
import 'sms_verification_state.dart';

part 'sms_verification_page_notifier.g.dart';

@riverpod
class SmsVerificationNotifier extends _$SmsVerificationNotifier {
  AuthenticationDataSource get authenticationDataSource =>
      ref.read(authenticationDataSourceProvider.notifier);
  ScaffoldMessenger get scaffoldMessenger =>
      ref.read(scaffoldMessengerProvider.notifier);

  @override
  SmsVerificationState build() {
    // SMS認証が完了しているかを定期的に確認
    final timer = Timer.periodic(const Duration(seconds: 1), (timer) async {
      final smsVerified = await authenticationDataSource.isSmsVerified();
      if (smsVerified) {
        timer.cancel();
        state = state.copyWith(
          isSmsVerified: true,
          smsVerificationButtonState: SmsVerificationButtonState.verified,
        );
      }
    });

    // Timerの破棄処理を登録
    ref.onDispose(timer.cancel);

    return const SmsVerificationState();
  }

  Future<void> sendSmsCode({required String phoneNumber}) async {
    if (state.smsVerificationButtonState ==
        SmsVerificationButtonState.coolDown) {
      return; // クールダウン中は処理を行わない
    }

    try {
      await authenticationDataSource.sendSmsCode(
        phoneNumber: phoneNumber,
        onCodeSent: (verificationId) {
          state = state.copyWith(
            verificationId: verificationId,
            smsVerificationButtonState: SmsVerificationButtonState.coolDown,
          );
          _startCoolDownTimer();
        },
        onError: (error) {
          state = state.copyWith(
            smsVerificationButtonState: SmsVerificationButtonState.initialize,
          );
          scaffoldMessenger.showExceptionSnackBar(
            'SMSコードの送信中にエラーが発生しました: ${error.message}',
          );
        },
      );
    } catch (error) {
      state = state.copyWith(
        smsVerificationButtonState: SmsVerificationButtonState.initialize,
      );
      scaffoldMessenger.showExceptionSnackBar('予期しないエラーが発生しました: $error');
    }
  }

  Future<void> verifySmsCode(String smsCode, VoidCallback onSuccess) async {
    if (state.verificationId.isEmpty) {
      scaffoldMessenger.showExceptionSnackBar('認証IDが存在しません。');
      return;
    }

    try {
      await authenticationDataSource.linkPhoneNumber(
        state.verificationId,
        smsCode,
      );
      state = state.copyWith(isSmsVerified: true);
      scaffoldMessenger.showSuccessSnackBar('認証に成功しました！');

      // 成功時のコールバックを呼び出す
      onSuccess();
    } catch (error) {
      scaffoldMessenger.showExceptionSnackBar('認証に失敗しました: $error');
    }
  }

  void _startCoolDownTimer() {
    Timer.periodic(const Duration(seconds: 1), (timer) {
      final countdown = state.resendEmailVerificationCountdown - 1;
      if (countdown <= 0) {
        timer.cancel();
        state = state.copyWith(
          smsVerificationButtonState: SmsVerificationButtonState.resend,
          resendEmailVerificationCountdown: 60,
        );
      } else {
        state = state.copyWith(
          resendEmailVerificationCountdown: countdown,
        );
      }
    });
  }

  void updatePhoneNumber(String phoneNumber) {
    // 日本の番号を+81形式に変換
    if (phoneNumber.startsWith('0')) {
      phoneNumber = '+81${phoneNumber.substring(1)}';
    }
    state = state.copyWith(phoneNumber: phoneNumber);
  }

  void updateSmsCode(String smsCode) {
    state = state.copyWith(smsCode: smsCode);
  }
}
