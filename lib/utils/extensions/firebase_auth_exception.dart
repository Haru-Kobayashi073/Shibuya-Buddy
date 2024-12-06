// 改行を行いたくない長い行があるため、以下のルールを無効化
// ignore_for_file: lines_longer_than_80_chars

import 'package:firebase_auth/firebase_auth.dart';

import '../../i18n/strings.g.dart';
import '../routes/app_router.dart';

extension FirebaseAuthExceptionEx on FirebaseAuthException {
  String get toLocalizedMessage {
    final context = rootNavigatorKey.currentContext!;
    final i18n = Translations.of(context);
    final i18nAuthError = i18n.authentication.firebaseAuth.error;

    switch (code) {
      case 'network-request-failed':
        return i18nAuthError.networkRequestFailed;
      case 'weak-password':
        return i18nAuthError.weakPassword;
      case 'invalid-email':
        return i18nAuthError.invalidEmail;
      case 'user-not-found':
        return i18nAuthError.userNotFound;
      case 'wrong-password':
        return i18nAuthError.wrongPassword;
      case 'email-already-in-use':
        return i18nAuthError.emailAlreadyInUse;
      default: // 想定外
        return i18nAuthError.unexpected;
    }
  }
}
