import 'package:firebase_auth/firebase_auth.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../i18n/strings.g.dart';
import '../../infrastructure/authentication/authentication_data_source.dart';
import '../../infrastructure/firebase/firebase_auth_provider.dart';
import '../../utils/custom_logger.dart';
import '../../utils/extensions/firebase_auth_exception.dart';
import '../../utils/providers/scaffold_messenger/scaffold_messenger.dart';
import 'account_page_state.dart';

part 'account_page_notifier.g.dart';

@riverpod
class AccountPageNotifier extends _$AccountPageNotifier {
  AuthenticationDataSource get authenticationDataSource =>
      ref.read(authenticationDataSourceProvider.notifier);
  FirebaseAuth get firebaseAuth => ref.read(firebaseAuthProvider);
  ScaffoldMessenger get scaffoldMessenger =>
      ref.read(scaffoldMessengerProvider.notifier);
  final snackBari18n = t.accountPage.snackBar;

  @override
  AccountPageState build() {
    final currentUser = firebaseAuth.currentUser;
    return AccountPageState(
      googleLinkage: checkGoogleLink(currentUser),
      appleLinkage: checkAppleLink(currentUser),
    );
  }

  bool checkAppleLink(User? currentUser) {
    final user = firebaseAuth.currentUser;
    return user?.providerData.any(
          (userInfo) =>
              userInfo.providerId == SocialAuthDomain.apple.providerId,
        ) ??
        false;
  }

  bool checkGoogleLink(User? currentUser) {
    final user = firebaseAuth.currentUser;
    return user?.providerData.any(
          (userInfo) =>
              userInfo.providerId == SocialAuthDomain.google.providerId,
        ) ??
        false;
  }

  Future<void> unlinkSocialAccount(SocialAuthDomain domain) async {
    try {
      await authenticationDataSource.unlink(domain);
      scaffoldMessenger.showSuccessSnackBar(snackBari18n.accountDeactivation);
      if (domain == SocialAuthDomain.apple) {
        state = state.copyWith(appleLinkage: false);
      } else if (domain == SocialAuthDomain.google) {
        state = state.copyWith(googleLinkage: false);
      }
    } on FirebaseAuthException catch (e) {
      logger.e('unlinkSocialAccount: $e');
      scaffoldMessenger.showExceptionSnackBar(snackBari18n.unlinkageFailure);
    }
  }

  Future<void> linkedWithApple() async {
    try {
      await authenticationDataSource.signInWithApple();
      state = state.copyWith(appleLinkage: true);
      scaffoldMessenger.showSuccessSnackBar(snackBari18n.successfulLinkage);
    } on FirebaseAuthException catch (e) {
      logger.e('linkedWithApple: $e');
      final exceptionMessage = e.toLocalizedMessage;
      ref
          .read(scaffoldMessengerProvider.notifier)
          .showExceptionSnackBar(exceptionMessage);
    } on Exception {
      scaffoldMessenger.showExceptionSnackBar(snackBari18n.linkageCancelled);
    }
  }

  Future<void> linkedWithGoogle() async {
    try {
      await authenticationDataSource.signInWithGoogle();
      state = state.copyWith(googleLinkage: true);
      scaffoldMessenger.showSuccessSnackBar(snackBari18n.successfulLinkage);
    } on FirebaseAuthException catch (e) {
      logger.e('linkedWithGoogle: $e');
      final exceptionMessage = e.toLocalizedMessage;
      ref
          .read(scaffoldMessengerProvider.notifier)
          .showExceptionSnackBar(exceptionMessage);
    } on Exception {
      scaffoldMessenger.showExceptionSnackBar(snackBari18n.linkageCancelled);
    }
  }

  Future<void> signOut({
    required Future<void> Function() onSuccess,
  }) async {
    try {
      await authenticationDataSource.signOut();
      scaffoldMessenger.showSuccessSnackBar(snackBari18n.signOut);
      await onSuccess();
    } on FirebaseAuthException catch (e) {
      logger.e('signOut: $e');
      scaffoldMessenger.showExceptionSnackBar(snackBari18n.signOutFailure);
    }
  }

  Future<void> deleteAccount({
    required Future<void> Function() onSuccess,
  }) async {
    try {
      await authenticationDataSource.deleteAccount();
      scaffoldMessenger.showSuccessSnackBar(snackBari18n.deleteAccount);
      await onSuccess();
    } on FirebaseAuthException catch (e) {
      logger.e('deleteAccount: $e');
      scaffoldMessenger
          .showExceptionSnackBar(snackBari18n.deleteAccountFailure);
    }
  }
}
