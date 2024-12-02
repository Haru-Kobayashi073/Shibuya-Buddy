abstract interface class AuthenticationRepository {
  Future<void> signInWithEmailAndPassword(String email, String password);
  Future<void> signUpWithEmailAndPassword(
    String email,
    String password,
  );
  Future<void> sendEmailVerification();
  Future<void> signInWithGoogle();
  Future<void> signInWithApple();
  Future<void> sendPasswordResetEmail(String email);
  Future<bool> isEmailVerified();
}
