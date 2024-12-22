import 'package:firebase_auth/firebase_auth.dart';

import '../../infrastructure/authentication/authentication_data_source.dart';

abstract interface class AuthenticationRepository {
  Future<void> signInWithEmailAndPassword(String email, String password);
  Future<void> signUpWithEmailAndPassword(
    String email,
    String password,
  );
  Future<void> sendEmailVerification();
  Future<AuthCredential> signInWithGoogle();
  Future<void> signInWithApple();
  Future<void> sendPasswordResetEmail(String email);
  Future<bool> isEmailVerified();
  Future<void> unlink(SocialAuthDomain domain);
  Future<void> linkWithCredential(AuthCredential credential);
  Future<void> signOut();
  Future<void> deleteAccount();
}
