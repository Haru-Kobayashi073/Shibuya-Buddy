import '../entities/user.dart';

abstract interface class UserRepository {
  Future<void> createUser({required User user});
  Future<User> fetchUser({required String userId});
  Stream<User> fetchUserStream({required String userId});
  Future<void> editUser({required User user});
}
