import 'dart:async';

import 'package:firebase_auth/firebase_auth.dart' as auth;
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../domain/entities/user.dart';
import '../../i18n/strings.g.dart';
import '../../infrastructure/authentication/authentication_data_source.dart';
import '../../infrastructure/firebase/firebase_auth_provider.dart';
import '../../infrastructure/user/user_data_source.dart';
import '../../utils/custom_logger.dart';
import '../../utils/extensions/firebase_auth_exception.dart';
import '../../utils/providers/scaffold_messenger/scaffold_messenger.dart';
import '../components/loading_overlay.dart';
import 'sms_verification_state.dart';

part 'sms_verification_page_notifier.g.dart';

@riverpod
class SmsVerificationNotifier extends _$SmsVerificationNotifier {
  AuthenticationDataSource get authenticationDataSource =>
      ref.read(authenticationDataSourceProvider.notifier);
  UserDataSource get userDataSource =>
      ref.read(userDataSourceProvider.notifier);

  ScaffoldMessenger get scaffoldMessenger =>
      ref.read(scaffoldMessengerProvider.notifier);
  auth.User get currentUser => ref.read(firebaseAuthProvider).currentUser!;
  TranslationsAuthenticationSmsVerificationPageScaffoldMessengerErrorEn
      get smsVerificationPageErrorStr =>
          t.authentication.smsVerificationPage.scaffoldMessenger.error;

  @override
  SmsVerificationState build() => const SmsVerificationState();

  void setVerificationId(String verificationId) {
    state = state.copyWith(verificationId: verificationId);
  }

  Future<void> verifySmsCode(
    String smsCode,
    void Function() onSuccess,
  ) async {
    final i18n = t.authentication.smsVerificationPage.scaffoldMessenger;

    if (smsCode.isEmpty) {
      scaffoldMessenger.showExceptionSnackBar(
        i18n.empty,
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

      final generatedName =
          'user ${currentUser.uid.substring(currentUser.uid.length - 5)}';

      await userDataSource.createUser(
        user: User(
          uid: currentUser.uid,
          billingGrade: BillingGrade.standard,
          createdAt: DateTime.now(),
          name: generatedName,
        ),
      );

      await currentUser.updateDisplayName(generatedName);

      scaffoldMessenger.showSuccessSnackBar(
        i18n.success,
      );
      onSuccess();
    } on auth.FirebaseAuthException catch (e) {
      final localizedMessage = e.toLocalizedMessage;
      scaffoldMessenger.showExceptionSnackBar(localizedMessage);
    } on Exception catch (e) {
      logger.error('verifySmsCode: $e', methodName: 'verifySmsCode');
      scaffoldMessenger
          .showExceptionSnackBar(smsVerificationPageErrorStr.failedToVerify);
    } finally {
      ref.read(isShowLoadingOverlayProvider.notifier).state = false;
    }
  }

  Future<void> resendSmsCode(String phoneNumber) async {
    final i18nPhoneNumberInputScaffoldMessenger =
        t.authentication.phoneNumberInputPage.scaffoldMessenger;
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
            smsVerificationPageErrorStr.failedToResendSmsCode,
          );
        },
      );
    } on Exception catch (error) {
      logger.error('resendSmsCode: $error', methodName: 'resendSmsCode');
      scaffoldMessenger.showExceptionSnackBar(
        smsVerificationPageErrorStr.failedToResendSmsCode,
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
