import 'package:firebase_auth/firebase_auth.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import 'firebase_auth_provider.dart';

part 'current_user.g.dart';

@Riverpod(keepAlive: true)
User currentUser(CurrentUserRef ref) {
  final user = ref.read(firebaseAuthProvider).currentUser!;
  return user;
}
