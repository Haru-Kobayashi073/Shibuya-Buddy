import 'package:firebase_auth/firebase_auth.dart' as auth;
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../domain/entities/user.dart';
import '../../infrastructure/firebase/current_auth_user.dart';
import '../../infrastructure/user/user_data_source.dart';
import '../../utils/providers/current_user/current_user.dart';

part 'my_page_notifier.g.dart';

@riverpod
class MyPageNotifier extends _$MyPageNotifier {
  UserDataSource get userDataSource =>
      ref.read(userDataSourceProvider.notifier);
  auth.User get currentUser => ref.read(currentAuthUserProvider);

  @override
  Future<User> build() async {
    await fetchUser();
    return ref.watch(currentUserProvider);
  }

  Future<void> fetchUser() async {
    await ref.read(currentUserProvider.notifier).fetchUser(currentUser.uid);
  }
}
