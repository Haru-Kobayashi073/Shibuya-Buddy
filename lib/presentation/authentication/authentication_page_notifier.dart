import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/widgets.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../i18n/strings.g.dart';
import '../../infrastructure/authentication/authentication_data_source.dart';
import '../../infrastructure/firebase/firebase_auth_provider.dart';
import '../../utils/custom_logger.dart';
import '../../utils/extensions/firebase_auth_exception.dart';
import '../../utils/providers/locale/locale_service.dart';
import '../../utils/providers/scaffold_messenger/scaffold_messenger.dart';
import '../../utils/providers/shared_preferences/shared_preferences_config.dart';
import '../../utils/providers/shared_preferences/shared_preferences_service.dart';
import '../components/loading_overlay.dart';

part 'authentication_page_notifier.g.dart';

@riverpod
class AuthenticationPageNotifier extends _$AuthenticationPageNotifier {
  AuthenticationDataSource get authenticationDataSource =>
      ref.read(authenticationDataSourceProvider.notifier);
  FirebaseAuth get firebaseAuth => ref.read(firebaseAuthProvider);
  ScaffoldMessenger get scaffoldMessenger =>
      ref.read(scaffoldMessengerProvider.notifier);
  SharedPreferencesService get sharedPreferencesService =>
      ref.read(sharedPreferencesServiceProvider.notifier);

  @override
  bool build() {
    final hasAlreadyLaunchedFirstTime = sharedPreferencesService.getBoolValue(
      key: SharedPreferencesKey.hasAlreadyLaunchedFirstTime,
    );

    return hasAlreadyLaunchedFirstTime;
  }

  Future<void> signInWithEmailAndPassword({
    required String emailAddress,
    required String password,
    required Future<void> Function() onSuccess,
    required Future<void> Function() onFailure,
  }) async {
    final i18n = t.authentication.emailVerificationPage.snackBar;
    ref.read(isShowLoadingOverlayProvider.notifier).state = true;

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
      logger.error(
        'signInWithEmailAndPassword: $e',
        methodName: 'signInWithEmailAndPassword',
      );
      final exceptionMessage = e.toLocalizedMessage;
      scaffoldMessenger.showExceptionSnackBar(exceptionMessage);
    } on Exception catch (e) {
      logger.error(
        'signInWithEmailAndPassword: $e',
        methodName: 'signInWithEmailAndPassword',
      );
      scaffoldMessenger.showExceptionSnackBar(
        t.authentication.authenticationPage.snackBar.failedToSignIn,
      );
    } finally {
      ref.read(isShowLoadingOverlayProvider.notifier).state = false;
    }
  }

  Future<void> signUpWithEmailAndPassword({
    required String emailAddress,
    required String password,
    required void Function() onSuccess,
  }) async {
    ref.read(isShowLoadingOverlayProvider.notifier).state = true;
    try {
      await authenticationDataSource.signUpWithEmailAndPassword(
        emailAddress,
        password,
      );
      onSuccess();
    } on FirebaseAuthException catch (e) {
      logger.error(
        'signUpWithEmailAndPassword: $e',
        methodName: 'signUpWithEmailAndPassword',
      );
      final exceptionMessage = e.toLocalizedMessage;
      ref
          .read(scaffoldMessengerProvider.notifier)
          .showExceptionSnackBar(exceptionMessage);
    } on Exception catch (e) {
      logger.error(
        'signUpWithEmailAndPassword: $e',
        methodName: 'signUpWithEmailAndPassword',
      );
      scaffoldMessenger.showExceptionSnackBar(
        t.authentication.authenticationPage.snackBar.failedToSignUp,
      );
    } finally {
      ref.read(isShowLoadingOverlayProvider.notifier).state = false;
    }
  }

  Future<void> signInWithGoogle({
    required void Function(String email) needEmailVerify,
    required void Function() needPhoneVerify,
    required void Function() onSuccess,
  }) async {
    ref.read(isShowLoadingOverlayProvider.notifier).state = true;
    try {
      await authenticationDataSource.signInWithGoogle();
      if (firebaseAuth.currentUser!.phoneNumber == null ||
          firebaseAuth.currentUser!.phoneNumber == '') {
        needPhoneVerify();
      } else if (!firebaseAuth.currentUser!.emailVerified) {
        needEmailVerify(firebaseAuth.currentUser!.email!);
      } else {
        onSuccess();
      }
    } on FirebaseAuthException catch (e) {
      logger.error(
        'signInWithGoogle: $e',
        methodName: 'signInWithGoogle',
      );
      final exceptionMessage = e.toLocalizedMessage;
      scaffoldMessenger.showExceptionSnackBar(exceptionMessage);
    } on Exception catch (e) {
      logger.error(
        'signInWithGoogle: $e',
        methodName: 'signInWithGoogle',
      );
      scaffoldMessenger.showExceptionSnackBar(
        t.authentication.authenticationPage.snackBar.failedToSignIn,
      );
    } finally {
      ref.read(isShowLoadingOverlayProvider.notifier).state = false;
    }
  }

  Future<void> signInWithApple({
    required void Function(String email) needEmailVerify,
    required void Function() needPhoneVerify,
    required void Function() onSuccess,
  }) async {
    ref.read(isShowLoadingOverlayProvider.notifier).state = true;
    try {
      await authenticationDataSource.signInWithApple();
      if (firebaseAuth.currentUser!.phoneNumber == null ||
          firebaseAuth.currentUser!.phoneNumber == '') {
        needPhoneVerify();
      } else if (!firebaseAuth.currentUser!.emailVerified) {
        needEmailVerify(firebaseAuth.currentUser!.email!);
      } else {
        onSuccess();
      }
    } on FirebaseAuthException catch (e) {
      logger.error(
        'signInWithApple: $e',
        methodName: 'signInWithApple',
      );
      final exceptionMessage = e.toLocalizedMessage;
      scaffoldMessenger.showExceptionSnackBar(exceptionMessage);
    } on Exception catch (e) {
      logger.error(
        'signInWithApple: $e',
        methodName: 'signInWithApple',
      );
      scaffoldMessenger.showExceptionSnackBar(
        t.authentication.authenticationPage.snackBar.failedToSignIn,
      );
    } finally {
      ref.read(isShowLoadingOverlayProvider.notifier).state = false;
    }
  }

  Future<void> onPressedChangeLocaleButton(String? text) async {
    if (text != null) {
      final appLocale =
          ref.read(localeServiceProvider.notifier).getLocaleFromString(text);
      await ref.read(localeServiceProvider.notifier).changeLocale(appLocale);
    }
  }

  Future<void> setFalseSharedPreferencesKey() async {
    await sharedPreferencesService.setBoolValue(
      key: SharedPreferencesKey.hasAlreadyLaunchedFirstTime,
      value: true,
    );
  }
}
