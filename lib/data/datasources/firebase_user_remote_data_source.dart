// filepath: lib/data/datasources/firebase_user_remote_data_source.dart
import '../models/user_model.dart';

abstract class FirebaseUserRemoteDataSource {
  Future<List<UserModel>> getAllUsers();
  Future<UserModel?> getUser(String uid);
  Future<void> addUser(UserModel user);
  Future<void> updateUser(String uid, UserModel updated);
  Future<void> deleteUser(String uid);
  Stream<List<UserModel>> watchUsers();
}

