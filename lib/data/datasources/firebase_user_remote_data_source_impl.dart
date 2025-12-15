// filepath: lib/data/datasources/firebase_user_remote_data_source_impl.dart
import 'package:firebase_database/firebase_database.dart';
import 'package:injectable/injectable.dart';

import '../models/user_model.dart';
import 'firebase_user_remote_data_source.dart';

@Singleton(as: FirebaseUserRemoteDataSource)
class FirebaseUserRemoteDataSourceImpl implements FirebaseUserRemoteDataSource {
  final FirebaseDatabase database;

  FirebaseUserRemoteDataSourceImpl({required this.database});

  @override
  Future<List<UserModel>> getAllUsers() async {
    final snapshot = await database.ref('users').get();

    if (!snapshot.exists) return [];

    final data = Map<String, dynamic>.from(snapshot.value as Map);

    return data.entries.map((entry) {
      return UserModel.fromJson(
        Map<String, dynamic>.from(entry.value),
      ).copyWith(uid: entry.key);
    }).toList();
  }

  @override
  Future<UserModel?> getUser(String uid) async {
    final snapshot = await database.ref('users/$uid').get();

    if (!snapshot.exists) return null;

    final data = Map<String, dynamic>.from(snapshot.value as Map);

    return UserModel.fromJson(data).copyWith(uid: uid);
  }

  @override
  Future<void> addUser(UserModel user) async {
    await database.ref('users').push().set(user.toJson());
  }

  @override
  Future<void> updateUser(String uid, UserModel updated) async {
    await database.ref('users/$uid').update(updated.toJson());
  }

  @override
  Future<void> deleteUser(String uid) async {
    await database.ref('users/$uid').remove();
  }

  @override
  Stream<List<UserModel>> watchUsers() {
    return database.ref('users').onValue.map((event) {
      if (event.snapshot.value == null) return [];
      final data = Map<String, dynamic>.from(event.snapshot.value as Map);

      return data.entries.map((entry) {
        return UserModel.fromJson(
          Map<String, dynamic>.from(entry.value),
        ).copyWith(uid: entry.key);
      }).toList();
    });
  }
}

