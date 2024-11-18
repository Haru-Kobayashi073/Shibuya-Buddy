import 'package:firebase_auth/firebase_auth.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import 'firebase_auth_provider.dart';

part 'firebase_auth_state_listener.g.dart';

@Riverpod(keepAlive: true)
Stream<User?> firebaseAuthStateListener(FirebaseAuthStateListenerRef ref) {
  return ref.read(firebaseAuthProvider).idTokenChanges();
}
