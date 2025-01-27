import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/widgets.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../i18n/strings.g.dart';
import '../../infrastructure/authentication/authentication_data_source.dart';
import '../../infrastructure/firebase/firebase_auth_provider.dart';
import '../../utils/extensions/firebase_auth_exception.dart';
import '../../utils/providers/locale/locale_service.dart';
import '../../utils/providers/scaffold_messenger/scaffold_messenger.dart';

part 'sign_in_page_notifier.g.dart';

@riverpod
class SignInPageNotifier extends _$SignInPageNotifier {
  AuthenticationDataSource get authenticationDataSource =>
      ref.read(authenticationDataSourceProvider.notifier);
  FirebaseAuth get firebaseAuth => ref.read(firebaseAuthProvider);
  ScaffoldMessenger get scaffoldMessenger =>
      ref.read(scaffoldMessengerProvider.notifier);

  @override
  void build() {
    return;
  }

  Future<void> signInWithEmailAndPassword({
    required String emailAddress,
    required String password,
    required Future<void> Function() onSuccess,
    required Future<void> Function() onFailure,
  }) async {
    final i18n = t.authentication.emailVerificationPage.snackBar;
    try {
      await authenticationDataSource.signInWithEmailAndPassword(
        emailAddress,
        password,
      );
      if (firebaseAuth.currentUser!.emailVerified) {
        await onSuccess();
      } else {
        await onFailure();
        WidgetsBinding.instance.addPostFrameCallback((_) {
          scaffoldMessenger.showExceptionSnackBar(i18n.emailVerification);
        });
      }
    } on FirebaseAuthException catch (e) {
      final exceptionMessage = e.toLocalizedMessage;
      scaffoldMessenger.showExceptionSnackBar(exceptionMessage);
    }
  }

  Future<void> signInWithGoogle({
    required void Function(String email) needEmailVerify,
    required void Function() needPhoneVerify,
    required void Function() onSuccess,
  }) async {
    try {
      await authenticationDataSource.signInWithGoogle();
      if (firebaseAuth.currentUser!.emailVerified) {
        needEmailVerify(firebaseAuth.currentUser!.email!);
      } else if (firebaseAuth.currentUser!.phoneNumber == null) {
        needPhoneVerify();
      } else {
        onSuccess();
      }
    } on FirebaseAuthException catch (e) {
      final exceptionMessage = e.toLocalizedMessage;
      scaffoldMessenger.showExceptionSnackBar(exceptionMessage);
    }
  }

  Future<void> signInWithApple({
    required void Function(String email) needEmailVerify,
    required void Function() needPhoneVerify,
    required void Function() onSuccess,
  }) async {
    try {
      await authenticationDataSource.signInWithApple();
      if (firebaseAuth.currentUser!.emailVerified) {
        needEmailVerify(firebaseAuth.currentUser!.email!);
      } else if (firebaseAuth.currentUser!.phoneNumber == null) {
        needPhoneVerify();
      } else {
        onSuccess();
      }
    } on FirebaseAuthException catch (e) {
      final exceptionMessage = e.toLocalizedMessage;
      scaffoldMessenger.showExceptionSnackBar(exceptionMessage);
    }
  }

  Future<void> onPressedChangeLocaleButton(String? text) async {
    if (text != null) {
      final appLocale =
          ref.read(localeServiceProvider.notifier).getLocaleFromString(text);
      await ref.read(localeServiceProvider.notifier).changeLocale(appLocale);
    }
  }
}
