import 'package:firebase_auth/firebase_auth.dart' as auth;
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../domain/entities/user.dart';
import '../../infrastructure/firebase/current_user.dart';
import '../../infrastructure/user/user_data_source.dart';

part 'my_page_notifier.g.dart';

@riverpod
class MyPageNotifier extends _$MyPageNotifier {
  UserDataSource get userDataSource =>
      ref.read(userDataSourceProvider.notifier);
  auth.User get currentUser => ref.read(currentUserProvider);

  @override
  Future<User> build() async {
    return fetchUser();
  }

  Future<User> fetchUser() async {
    return userDataSource.fetchUser(userId: currentUser.uid);
  }
}
