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
  SmsVerificationState build() => const SmsVerificationState();

  void setVerificationId(String verificationId) {
    state = state.copyWith(verificationId: verificationId);
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
      onSuccess();
    } catch (error) {
      scaffoldMessenger.showExceptionSnackBar('認証に失敗しました: $error');
    }
  }

  Future<void> sendSmsCode(String phoneNumber) async {
    try {
      await authenticationDataSource.sendSmsCode(
        phoneNumber: phoneNumber,
        onCodeSent: (verificationId) {
          state = state.copyWith(verificationId: verificationId);
          scaffoldMessenger.showSuccessSnackBar('SMSコードが送信されました！');
        },
        onError: (error) {
          scaffoldMessenger.showExceptionSnackBar(
            'SMSコードの送信に失敗しました: ${error.message}',
          );
        },
      );
    } catch (error) {
      scaffoldMessenger.showExceptionSnackBar('予期しないエラーが発生しました: $error');
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
}
