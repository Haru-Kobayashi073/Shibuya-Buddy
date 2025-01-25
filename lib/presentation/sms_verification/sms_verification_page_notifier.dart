import 'dart:async';

import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../infrastructure/authentication/authentication_data_source.dart';
import '../../infrastructure/sms/sms_auth_data_source.dart';
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
    /// SMS認証が完了しているかを一秒ごとに確認
    final timer =
        Timer.periodic(const Duration(seconds: 1), (Timer timer) async {
      final smsVerified = await authenticationDataSource.isSmsVerified();
      if (smsVerified) {
        timer.cancel();
        state = state.copyWith(
          isSmsVerified: true,
          smsVerificationButtonState: SmsVerificationButtonState.verified,
        );
      }
    });
    ref.onDispose(timer.cancel);
    return const SmsVerificationState();
  }

  Future<void> sendSmsCode() async {
    if (state.smsVerificationButtonState ==
        SmsVerificationButtonState.coolDown) {
      return;
    }

    try {
      await SmsAuthDataSource().sendSmsCode(
        phoneNumber: state.phoneNumber,
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
}
