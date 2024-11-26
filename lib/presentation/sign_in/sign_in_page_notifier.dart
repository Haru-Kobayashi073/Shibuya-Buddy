import 'package:firebase_auth/firebase_auth.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../infrastructure/authentication/authentication_data_source.dart';
import '../../utils/extensions/firebase_auth_exception.dart';
import '../../utils/providers/locale/locale_service.dart';
import '../../utils/providers/scaffold_messenger/scaffold_messenger.dart';

part 'sign_in_page_notifier.g.dart';

@riverpod
class SignInPageNotifier extends _$SignInPageNotifier {
  AuthenticationDataSource get authenticationDataSource =>
      ref.read(authenticationDataSourceProvider.notifier);
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
  }) async {
    try {
      await authenticationDataSource.signInWithEmailAndPassword(
        emailAddress,
        password,
      );
      await onSuccess();
    } on FirebaseAuthException catch (e) {
      final exceptionMessage = e.toLocalizedMessage;
      scaffoldMessenger.showExceptionSnackBar(exceptionMessage);
    }
  }

  Future<void> signInWithGoogle() async {
    try {
      await authenticationDataSource.signInWithGoogle();
    } on FirebaseAuthException catch (e) {
      final exceptionMessage = e.toLocalizedMessage;
      scaffoldMessenger.showExceptionSnackBar(exceptionMessage);
    }
  }

  Future<void> signInWithApple() async {
    try {
      await authenticationDataSource.signInWithApple();
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
