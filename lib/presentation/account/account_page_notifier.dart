import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/foundation.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../i18n/strings.g.dart';
import '../../infrastructure/authentication/authentication_data_source.dart';
import '../../infrastructure/firebase/firebase_auth_provider.dart';
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
          (userInfo) => userInfo.providerId == 'apple.com',
        ) ??
        false;
  }

  bool checkGoogleLink(User? currentUser) {
    final user = firebaseAuth.currentUser;
    return user?.providerData.any(
          (userInfo) => userInfo.providerId == 'google.com',
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
    } on FirebaseAuthException {
      scaffoldMessenger.showExceptionSnackBar(snackBari18n.unlinkageFailure);
    }
  }

  Future<void> linkedWithApple() async {
    debugPrint('ダミー');
    state = state.copyWith(appleLinkage: true);
  }

  Future<void> linkedWithGoogle() async {
    try {
      final credential = await authenticationDataSource.signInWithGoogle();
      await linkedSocialAccount(credential);
      state = state.copyWith(googleLinkage: true);
    } on Exception {
      scaffoldMessenger.showExceptionSnackBar(snackBari18n.linkageCancelled);
    }
  }

  Future<void> linkedSocialAccount(AuthCredential credential) async {
    try {
      //アカウント連携
      await authenticationDataSource.linkWithCredential(credential);
      scaffoldMessenger.showSuccessSnackBar(snackBari18n.successfulLinkage);
    } on FirebaseAuthException catch (e) {
      final exceptionMessage = e.toString();
      ref
          .read(scaffoldMessengerProvider.notifier)
          .showExceptionSnackBar(exceptionMessage);
    }
  }
}
