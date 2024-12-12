import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/services.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../i18n/strings.g.dart';
import '../../utils/providers/scaffold_messenger/scaffold_messenger.dart';

part 'account_page_notifier.g.dart';

@riverpod
AccountLogic accountLogic(AccountLogicRef ref) {
  return AccountLogic(ref);
}

class AccountLogic {
  AccountLogic(this.ref);
  final FirebaseAuth _auth = FirebaseAuth.instance;
  final GoogleSignIn _googleSignIn = GoogleSignIn();

  final Ref ref;

  bool appleLinkageConfirmation(User? user) {
    return user?.providerData.any(
          (userInfo) => userInfo.providerId == 'apple.com',
        ) ??
        false;
  }

  bool googleLinkageConfirmation(User? user) {
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

  Future<User?> linkedWithGoogle() async {
    final snackBari18n = t.accountPage.snackBar;
    final snack = ref.watch(
        scaffoldMessengerProvider.notifier as AlwaysAliveProviderListenable,);
    try {
      final googleUser = await _googleSignIn.signIn();

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
          await currentUser.linkWithCredential(credential);
          snack.showExceptionSnackBar(snackBari18n.successfulLinkage);
          return currentUser;
        } on FirebaseAuthException catch (e) {
          if (e.code == 'provider-already-linked') {
            snack.showExceptionSnackBar(snackBari18n.accountLinked);
          } else if (e.code == 'invalid-credential') {
            snack.showExceptionSnackBar(snackBari18n.nvalidCredential);
          }
          return null;
        }
      } else {
        final userCredential = await _auth.signInWithCredential(credential);
        final user = userCredential.user;
        return user;
      }
    } on PlatformException {
      snack.showExceptionSnackBar(snackBari18n.linkageCancelled);
    }
    return null;
  }

  Future<void> signOut() async {
    await _googleSignIn.signOut();
    await _auth.signOut();
  }
}
