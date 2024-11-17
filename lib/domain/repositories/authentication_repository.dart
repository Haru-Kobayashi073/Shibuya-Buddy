abstract interface class AuthenticationRepository {
  Future<void> signInWithEmailAndPassword(String email, String password);
  Future<void> signInWithGoogle();
  Future<void> signInWithApple();
}
