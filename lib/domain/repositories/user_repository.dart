import '../entities/user.dart';

// ignore: one_member_abstracts - This is a temporary rule to suppress the warning.
abstract interface class UserRepository {
  Future<void> createUser({required User user});
  Future<User> fetchUser({required String userId});
}
