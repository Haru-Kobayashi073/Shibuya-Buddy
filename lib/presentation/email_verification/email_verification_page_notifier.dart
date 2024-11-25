import 'dart:async';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../i18n/strings.g.dart';
import '../../infrastructure/authentication/authentication_data_source.dart';
import '../../infrastructure/firebase/firebase_auth_provider.dart';
import '../../utils/providers/scaffold_messenger/scaffold_messenger.dart';
import '../../utils/routes/app_router.dart';

part 'email_verification_page_notifier.g.dart';

@riverpod
class EmailVerificationPageNotifier extends _$EmailVerificationPageNotifier {
  AuthenticationDataSource get authenticationDataSource =>
      ref.read(authenticationDataSourceProvider.notifier);
  FirebaseAuth get firebaseAuth => ref.read(firebaseAuthProvider);

  @override
  bool build() {
    /// メール認証が完了しているかを一秒ごとに確認する。
    final timer =
        Timer.periodic(const Duration(seconds: 1), (Timer timer) async {
      final isEmailVerified = await authenticationDataSource.isEmailVerified();
      if (firebaseAuth.currentUser == null) {
        state = isEmailVerified;
      } else if (firebaseAuth.currentUser!.emailVerified) {
        timer.cancel();
        state = isEmailVerified;
      }
    });
    ref.onDispose(timer.cancel);
    return false;
  }

  Future<void> resendEmailVerification() async {
    final i18n = Translations.of(rootNavigatorKey.currentContext!)
        .authentication
        .emailVerificationPage
        .snackBar;
    try {
      await authenticationDataSource.sendEmailVerification();
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
