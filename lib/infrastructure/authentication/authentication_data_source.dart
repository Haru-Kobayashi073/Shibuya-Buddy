import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/foundation.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:sign_in_with_apple/sign_in_with_apple.dart';

import '../../domain/repositories/authentication_repository.dart';
import '../firebase/firebase_auth_provider.dart';

part 'authentication_data_source.g.dart';

@riverpod
class AuthenticationDataSource extends _$AuthenticationDataSource
    implements AuthenticationRepository {
  FirebaseAuth get firebaseAuth => ref.read(firebaseAuthProvider);

  @override
  void build() {
    return;
  }

  @override
  Future<void> signInWithEmailAndPassword(String email, String password) async {
    await firebaseAuth.signInWithEmailAndPassword(
      email: email,
      password: password,
    );
  }

  @override
  Future<void> signInWithGoogle() async {
    final googleUser = await GoogleSignIn().signIn();
    final googleAuth = await googleUser?.authentication;

    GoogleAuthProvider.credential(
      accessToken: googleAuth?.accessToken,
      idToken: googleAuth?.idToken,
    );
  }

  @override
  Future<void> signInWithApple() async {
    if (kIsWeb) {
      return;
    } else {
      final credential = await SignInWithApple.getAppleIDCredential(
        scopes: [
          AppleIDAuthorizationScopes.email,
          AppleIDAuthorizationScopes.fullName,
        ],
      );

      OAuthProvider('apple.com').credential(
        idToken: credential.identityToken,
        accessToken: credential.authorizationCode,
      );
    }
  }

  @override
  Future<void> sendPasswordResetEmail(String email) async {
    await firebaseAuth.sendPasswordResetEmail(email: email);
  }

  @override
  Future<void> sendEmailVerification(UserCredential userCredential) async {
    await userCredential.user?.sendEmailVerification();
  }

  @override
  Future<UserCredential> signUpWithEmailAndPassword(
    String email,
    String password,
  ) async {
    return firebaseAuth.createUserWithEmailAndPassword(
      email: email,
      password: password,
    );
  }

  @override
  Future<bool> isEmailVerified() async {
    await firebaseAuth.currentUser?.reload();
    if (firebaseAuth.currentUser == null) {
      return false;
    } else {
      return firebaseAuth.currentUser!.emailVerified;
    }
  }
}
