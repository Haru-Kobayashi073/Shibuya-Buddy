import 'package:firebase_auth/firebase_auth.dart';

abstract interface class AuthenticationRepository {
  Future<void> signInWithEmailAndPassword(String email, String password);
  Future<UserCredential> signUpWithEmailAndPassword(
    String email,
    String password,
  );
  Future<void> sendEmailVerification(UserCredential userCredential);
  Future<void> signInWithGoogle();
  Future<void> signInWithApple();
  Future<void> sendPasswordResetEmail(String email);
  Future<bool> isEmailVerified();
}
