// 改行を行いたくない長い行があるため、以下のルールを無効化
// ignore_for_file: lines_longer_than_80_chars

import 'package:firebase_auth/firebase_auth.dart';

import '../../i18n/strings.g.dart';

extension FirebaseAuthExceptionEx on FirebaseAuthException {
  String get toLocalizedMessage {
    final i18nAuthError = t.authentication.firebaseAuth.error;

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
      case 'provider-already-linked':
        return i18nAuthError.phoneNumberAlreadyInUse;
      
      default: // 想定外
        return i18nAuthError.unexpected;
    }
  }
}
