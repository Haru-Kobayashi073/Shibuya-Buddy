import 'package:firebase_auth/firebase_auth.dart' show FirebaseAuth;
import 'package:flutter/foundation.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../../domain/entities/user.dart';
import '../../../infrastructure/firebase/firebase_auth_provider.dart';
import '../../../infrastructure/user/user_data_source.dart';
import '../scaffold_messenger/scaffold_messenger.dart';

part 'current_user.g.dart';

@Riverpod(keepAlive: true)
class CurrentUser extends _$CurrentUser {
  UserDataSource get userDataSource =>
      ref.read(userDataSourceProvider.notifier);
  FirebaseAuth get firebaseAuth => ref.read(firebaseAuthProvider);
  ScaffoldMessenger get scaffoldMessenger =>
      ref.read(scaffoldMessengerProvider.notifier);

  @override
  User build() {
    return User(
      uid: '',
      billingGrade: BillingGrade.standard,
      createdAt: DateTime.now(),
    );
  }

  Future<void> fetchUser(String userId) async {
    try {
      if (firebaseAuth.currentUser == null) {
        return;
      }
      final user =
          await userDataSource.fetchUser(userId: firebaseAuth.currentUser!.uid);
      state = user;
    } on Exception catch (e) {
      debugPrint(e.toString());
    }
  }
}
