// filepath: lib/data/datasources/firebase_pending_user_remote_data_source_impl.dart
import 'package:firebase_database/firebase_database.dart';
import 'package:injectable/injectable.dart';

import '../models/pending_user_model.dart';
import 'firebase_pending_user_remote_data_source.dart';

@Singleton(as: FirebasePendingUserRemoteDataSource)
class FirebasePendingUserRemoteDataSourceImpl implements FirebasePendingUserRemoteDataSource {
  final FirebaseDatabase database;

  FirebasePendingUserRemoteDataSourceImpl({required this.database});

  @override
  Future<List<PendingUserModel>> getAllPendingUsers() async {
    final snapshot = await database.ref('pendingUsers').get();

    if (!snapshot.exists) return [];

    final data = Map<String, dynamic>.from(snapshot.value as Map);

    return data.entries.map((entry) {
      return PendingUserModel.fromJson(
        Map<String, dynamic>.from(entry.value),
      ).copyWith(uid: entry.key);
    }).toList();
  }

  @override
  Future<PendingUserModel?> getPendingUser(String uid) async {
    final snapshot = await database.ref('pendingUsers/$uid').get();

    if (!snapshot.exists) return null;

    final data = Map<String, dynamic>.from(snapshot.value as Map);

    return PendingUserModel.fromJson(data).copyWith(uid: uid);
  }

  @override
  Future<void> addPendingUser(PendingUserModel user) async {
    // Use uid as key as Firebase structure indicates
    await database.ref('pendingUsers/${user.uid}').set(user.toJson());
  }

  @override
  Future<void> updatePendingUser(String uid, PendingUserModel updated) async {
    await database.ref('pendingUsers/$uid').update(updated.toJson());
  }

  @override
  Future<void> deletePendingUser(String uid) async {
    await database.ref('pendingUsers/$uid').remove();
  }

  @override
  Stream<List<PendingUserModel>> watchPendingUsers() {
    return database.ref('pendingUsers').onValue.map((event) {
      if (event.snapshot.value == null) return [];
      final data = Map<String, dynamic>.from(event.snapshot.value as Map);

      return data.entries.map((entry) {
        return PendingUserModel.fromJson(
          Map<String, dynamic>.from(entry.value),
        ).copyWith(uid: entry.key);
      }).toList();
    });
  }
}

