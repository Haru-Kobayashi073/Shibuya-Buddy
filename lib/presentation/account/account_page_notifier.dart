import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/services.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

@riverpod
class AccountPageNotifier {
  
}

final FirebaseAuth _auth = FirebaseAuth.instance;
final GoogleSignIn _googleSignIn = GoogleSignIn();

final accountLogicProvider = Provider(AccountLogic.new);

class AccountLogic {
  AccountLogic(this.ref);

  final Ref ref;

  bool appleLinkageConfirmationnfirmation(User? user) {
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
          // snack.showExceptionSnackBar(snackBar.successfulLinkage);
          return currentUser;
        } on FirebaseAuthException catch (e) {
          if (e.code == 'provider-already-linked') {
            // snack.showExceptionSnackBar(snackBar.accountLinked);
          } else if (e.code == 'invalid-credential') {
            // snack.showExceptionSnackBar(snackBar.nvalidCredential);
          }
          return null;
        }
      } else {
        try {
          final userCredential = await _auth.signInWithCredential(credential);
          final user = userCredential.user;
          return user;
        } on FirebaseAuthException {
          return null;
        }
      }
    } on PlatformException {
      // snack.showExceptionSnackBar(snackBar.linkageCancelled);
    }
    return null;
  }

  Future<void> signOut() async {
    await _googleSignIn.signOut();
    await _auth.signOut();
  }
}
