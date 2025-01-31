import 'dart:async';

import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../i18n/strings.g.dart';
import '../../infrastructure/authentication/authentication_data_source.dart';
import '../../utils/providers/scaffold_messenger/scaffold_messenger.dart';
import 'email_verification_state.dart';

part 'email_verification_page_notifier.g.dart';

@riverpod
class EmailVerificationPageNotifier extends _$EmailVerificationPageNotifier {
  AuthenticationDataSource get authenticationDataSource =>
      ref.read(authenticationDataSourceProvider.notifier);
  ScaffoldMessenger get scaffoldMessenger =>
      ref.read(scaffoldMessengerProvider.notifier);
  TranslationsAuthenticationEmailVerificationPageSnackBarEn get i18n =>
      t.authentication.emailVerificationPage.snackBar;

  @override
  EmailVerificationState build() {
    /// メール認証が完了しているかを一秒ごとに確認する。
    final checkVerifyTimer = Timer.periodic(const Duration(seconds: 1),
        (Timer checkVerifyTimer) async {
      final emailVerified = await authenticationDataSource.isEmailVerified();
      if (emailVerified) {
        checkVerifyTimer.cancel();
        state = state.copyWith(
          isEmailVerified: true,
          emailVerificationButtonState: EmailVerificationButtonState.verified,
        );
      } else {
        if (checkVerifyTimer.tick == 1) {
          await sendEmailVerification();
        }
      }
    });

    ref.onDispose(checkVerifyTimer.cancel);
    return const EmailVerificationState();
  }

  Future<void> sendEmailVerification() async {
    if (state.emailVerificationButtonState ==
        EmailVerificationButtonState.coolDown) {
      return;
    }

    try {
      await authenticationDataSource.sendEmailVerification();
      state = state.copyWith(
        emailVerificationButtonState: EmailVerificationButtonState.coolDown,
        resendEmailVerificationCountdown: 60,
      );
      Timer.periodic(const Duration(seconds: 1), (Timer timer) {
        state = state.copyWith(
          resendEmailVerificationCountdown: 60 - timer.tick,
        );
        if (timer.tick == 60) {
          state = state.copyWith(
            emailVerificationButtonState: EmailVerificationButtonState.resend,
          );
          timer.cancel();
        }
      });
      scaffoldMessenger.showSuccessSnackBar(i18n.success);
    } on Exception catch (_) {
      scaffoldMessenger.showExceptionSnackBar(i18n.error.unexpected);
    }
  }
}
