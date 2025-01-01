import 'package:firebase_auth/firebase_auth.dart' as auth;
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../domain/entities/user.dart';
import '../../infrastructure/firebase/firebase_auth_provider.dart';
import '../../infrastructure/user/user_data_source.dart';
import '../../utils/providers/current_user/current_user.dart';

part 'my_page_notifier.g.dart';

@riverpod
class MyPageNotifier extends _$MyPageNotifier {
  UserDataSource get userDataSource =>
      ref.read(userDataSourceProvider.notifier);
  auth.User get currentUser => ref.read(firebaseAuthProvider).currentUser!;

  @override
  Future<User> build() async {
    await fetchUser();
    return ref.watch(currentUserProvider);
  }

  Future<void> fetchUser() async {
    await ref.read(currentUserProvider.notifier).fetchUser(currentUser.uid);
  }

  Future<void> launchPrivacyPolicy() async {
    final url = Uri.parse(
      'https://pond-link-c69.notion.site/16b4d7d3b3898012b75ecb83c2b4c2c4?pvs=73',
    );
    if (await canLaunchUrl(url)) {
      await launchUrl(url);
    } else {
      throw Exception('Could not launch $url');
    }
  }
}
