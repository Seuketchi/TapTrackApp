import '../entities/user.dart';

abstract class UserRepository {
  Future<List<User>> getAllUsers();
  Future<User> getUser(String uid);
  Future<void> addUser(User user);
  Future<void> updateUser(String uid, User updated);
  Future<void> deleteUser(String uid);
  Stream<List<User>> watchUsers();
}