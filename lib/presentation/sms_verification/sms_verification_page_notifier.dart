import 'dart:async';

import 'package:flutter/material.dart' hide ScaffoldMessenger;
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../i18n/strings.g.dart';
import '../../infrastructure/authentication/authentication_data_source.dart';
import '../../utils/providers/scaffold_messenger/scaffold_messenger.dart';
import '../../utils/routes/app_router.dart';
import '../components/loading_overlay.dart';
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

  Future<void> verifySmsCode(BuildContext context, String smsCode) async {
    final i18n = Translations.of(context);
    final i18nSmsVerificationScaffoldMessenger =
        i18n.authentication.smsVerificationPage.scaffoldMessenger;

    if (smsCode.isEmpty) {
      scaffoldMessenger.showExceptionSnackBar(
        i18nSmsVerificationScaffoldMessenger.empty,
      );
      return;
    }
    ref.read(isShowLoadingOverlayProvider.notifier).state = true;
    try {
      await authenticationDataSource.linkPhoneNumber(
        state.verificationId,
        smsCode,
      );
      state = state.copyWith(isSmsVerified: true);
      scaffoldMessenger.showSuccessSnackBar(
        i18nSmsVerificationScaffoldMessenger.success,
      );

      // 遷移処理をNotifier内で管理
      const RegisterProfilePageRouteData().go(context);
    } catch (error) {
      scaffoldMessenger.showExceptionSnackBar(
        i18nSmsVerificationScaffoldMessenger.error,
      );
    } finally {
      ref.read(isShowLoadingOverlayProvider.notifier).state = false;
    }
  }

  Future<void> sendSmsCode(BuildContext context, String phoneNumber) async {
    final i18n = Translations.of(context);
    final i18nPhoneNumberInputScaffoldMessenger =
        i18n.authentication.phoneNumberInputPage.scaffoldMessenger;
    if (phoneNumber.isEmpty) {
      scaffoldMessenger
          .showExceptionSnackBar(i18nPhoneNumberInputScaffoldMessenger.empty);
      return;
    }

    try {
      await authenticationDataSource.sendSmsCode(
        phoneNumber: phoneNumber,
        onCodeSent: (verificationId) {
          state = state.copyWith(verificationId: verificationId);
          scaffoldMessenger.showSuccessSnackBar(
            i18nPhoneNumberInputScaffoldMessenger.success,
          );
          startCoolDownTimer();
        },
        onError: (error) {
          scaffoldMessenger.showExceptionSnackBar(
            i18nPhoneNumberInputScaffoldMessenger.error,
          );
        },
      );
    } catch (error) {
      scaffoldMessenger.showExceptionSnackBar(
        i18nPhoneNumberInputScaffoldMessenger.unexpectedError,
      );
    }
  }

  void startCoolDownTimer() {
    state = state.copyWith(
      buttonState: SmsVerificationButtonState.coolDown,
      resendCooldown: 60,
    );

    Timer.periodic(const Duration(seconds: 1), (timer) {
      final countdown = state.resendCooldown - 1;

      if (countdown <= 0) {
        timer.cancel();
        state = state.copyWith(buttonState: SmsVerificationButtonState.resend);
      } else {
        state = state.copyWith(resendCooldown: countdown);
      }
    });
  }
}
