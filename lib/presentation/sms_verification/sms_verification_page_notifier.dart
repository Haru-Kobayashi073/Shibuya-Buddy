import 'dart:async';

import 'package:firebase_auth/firebase_auth.dart' as auth;
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../domain/entities/user.dart';
import '../../i18n/strings.g.dart';
import '../../infrastructure/authentication/authentication_data_source.dart';
import '../../infrastructure/firebase/firebase_auth_provider.dart';
import '../../infrastructure/user/user_data_source.dart';
import '../../utils/custom_logger.dart';
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
      await userDataSource.createUser(
        user: User(
          uid: currentUser.uid,
          billingGrade: BillingGrade.standard,
          createdAt: DateTime.now(),
          name: 'user ${currentUser.uid.substring(currentUser.uid.length - 5)}',
        ),
      );
      scaffoldMessenger.showSuccessSnackBar(
        i18n.success,
      );
      onSuccess();
    } on Object catch (error) {
      logger.e('verifySmsCode: $error');
      scaffoldMessenger.showExceptionSnackBar(
        '${i18n.error} $error',
      );
    } finally {
      ref.read(isShowLoadingOverlayProvider.notifier).state = false;
    }
  }

  Future<void> sendSmsCode(String phoneNumber) async {
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
            i18nPhoneNumberInputScaffoldMessenger.error,
          );
        },
      );
    } on Exception catch (error) {
      logger.e('sendSmsCode: $error');
      scaffoldMessenger.showExceptionSnackBar(
        '${i18nPhoneNumberInputScaffoldMessenger.unexpectedError} $error',
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
