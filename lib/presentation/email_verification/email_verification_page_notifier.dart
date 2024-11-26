import 'dart:async';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../i18n/strings.g.dart';
import '../../infrastructure/authentication/authentication_data_source.dart';
import '../../infrastructure/firebase/firebase_auth_provider.dart';
import '../../utils/providers/scaffold_messenger/scaffold_messenger.dart';
import '../../utils/routes/app_router.dart';
import 'email_verification_state.dart';

part 'email_verification_page_notifier.g.dart';

@riverpod
class EmailVerificationPageNotifier extends _$EmailVerificationPageNotifier {
  AuthenticationDataSource get authenticationDataSource =>
      ref.read(authenticationDataSourceProvider.notifier);
  FirebaseAuth get firebaseAuth => ref.read(firebaseAuthProvider);

  @override
  EmailVerificationState build() {
    /// メール認証が完了しているかを一秒ごとに確認する。
    final timer =
        Timer.periodic(const Duration(seconds: 1), (Timer timer) async {
      await authenticationDataSource.isEmailVerified();
      if (firebaseAuth.currentUser == null) {
        state = EmailVerificationState(
          canResendEmailVerification: state.canResendEmailVerification,
        );
      } else if (firebaseAuth.currentUser!.emailVerified) {
        timer.cancel();
        state = const EmailVerificationState(isEmailVerified: true);
      }
    });
    ref.onDispose(timer.cancel);
    return const EmailVerificationState();
  }

  Future<void> resendEmailVerification() async {
    if (!state.canResendEmailVerification) {
      return;
    }
    final i18n = Translations.of(rootNavigatorKey.currentContext!)
        .authentication
        .emailVerificationPage
        .snackBar;
    try {
      await authenticationDataSource.sendEmailVerification();
      state = const EmailVerificationState(canResendEmailVerification: false);
      Timer.periodic(const Duration(seconds: 1), (Timer timer) {
        state = EmailVerificationState(
          canResendEmailVerification: false,
          resendEmailVerificationCountdown:
              state.resendEmailVerificationCountdown - 1,
        );
        if (timer.tick == 60) {
          state = const EmailVerificationState();
          timer.cancel();
        }
      });
      ref
          .read(scaffoldMessengerProvider.notifier)
          .showSuccessSnackBar(i18n.success);
    } on Exception catch (_) {
      ref
          .read(scaffoldMessengerProvider.notifier)
          .showExceptionSnackBar(i18n.error.unexpected);
    }
  }
}
