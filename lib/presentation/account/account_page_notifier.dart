import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../i18n/strings.g.dart';
import '../../infrastructure/authentication/authentication_data_source.dart';
import '../../utils/providers/scaffold_messenger/scaffold_messenger.dart';
import 'account_page_state.dart';

part 'account_page_notifier.g.dart';

@riverpod
class AccountPageNotifier extends _$AccountPageNotifier {
  AuthenticationDataSource get authenticationDataSource =>
      ref.read(authenticationDataSourceProvider.notifier);

  @override
  AccountPageState build() {
    final currentUser = _auth.currentUser;
    return AccountPageState(
      googleLinkage: checkGoogleLink(currentUser),
      appleLinkage: checkAppleLink(currentUser),
    );
  }

  final GoogleSignIn _googleSignIn = GoogleSignIn();
  final FirebaseAuth _auth = FirebaseAuth.instance;

  Future<void> updateGoogleLinkStatus({required bool link}) async {
    state = state.copyWith(googleLinkage: link);
  }

  Future<void> updateAppleLinkStatus({required bool link}) async {
    state = state.copyWith(appleLinkage: link);
  }

  bool checkAppleLink(User? user) {
    return user?.providerData.any(
          (userInfo) => userInfo.providerId == 'apple.com',
        ) ??
        false;
  }

  bool checkGoogleLink(User? user) {
    return user?.providerData.any(
          (userInfo) => userInfo.providerId == 'google.com',
        ) ??
        false;
  }

  Future<bool> unlinkGoogle(User? user) async {
    if (user == null) {
      return false;
    }

    try {
      await user.unlink('google.com');
      return true;
    } on FirebaseAuthException {
      return false;
    }
  }

  Future<bool> unlinkApple(User? user) async {
    if (user == null) {
      return false;
    }

    try {
      await user.unlink('apple.com');
      return true;
    } on FirebaseAuthException {
      return false;
    }
  }

  Future<User?> linkedWithApple() async {
    debugPrint('ダミー');
    return null;
  }

  Future<User?> linkedWithGoogle() async {
    final snackBari18n = t.accountPage.snackBar;
    final snack = ref.watch(scaffoldMessengerProvider.notifier);

    try {
      final googleUser = await GoogleSignIn().signIn();

      if (googleUser == null) {
        return null;
      }

      final googleAuth = await googleUser.authentication;

      // Firebase用の資格情報を作成
      final AuthCredential credential = GoogleAuthProvider.credential(
        accessToken: googleAuth.accessToken,
        idToken: googleAuth.idToken,
      );

      final currentUser = _auth.currentUser;

      if (currentUser != null) {
        try {
          //アカウント連携
          await currentUser.linkWithCredential(credential);
          return currentUser;
        } on FirebaseAuthException catch (e) {
          switch (e.code) {
            case 'provider-already-linked':
              //  連携済み
              snack.showExceptionSnackBar(snackBari18n.providerAlreadyLinked);
            case 'invalid-credential':
              //googleのサインインが期限切れ
              snack.showExceptionSnackBar(snackBari18n.invalidCredential);
            case 'operation-not-allowed':
              //プロパイダーが無効
              snack.showExceptionSnackBar(snackBari18n.operationNotAllowed);
            default:
              snack.showExceptionSnackBar(
                '${snackBari18n.unknownError}:$e',
              );
          }
          return null;
        }
      }
    } on PlatformException {
      //アカウント連携キャンセル
      snack.showExceptionSnackBar(snackBari18n.linkageCancelled);
      return null;
    }
    return null;
  }

  Future<void> signOut() async {
    await _googleSignIn.signOut();
    await _auth.signOut();
  }
}
