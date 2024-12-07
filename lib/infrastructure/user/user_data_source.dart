import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import '../../domain/entities/user.dart';

import '../../domain/repositories/user_repository.dart';
import '../firebase/cloud_firestore_provider.dart';

part 'user_data_source.g.dart';

@riverpod
class UserDataSource extends _$UserDataSource implements UserRepository {
  FirebaseFirestore get firestore => ref.read(cloudFirestoreProvider);

  @override
  void build() {
    return;
  }

  @override
  Future<void> createUser({required User user}) async {
    await firestore.collection('users').doc(user.uid).set(user.toJson());
  }
}
