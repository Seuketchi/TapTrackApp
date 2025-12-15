// filepath: lib/data/datasources/firebase_pending_user_remote_data_source.dart
import '../models/pending_user_model.dart';

abstract class FirebasePendingUserRemoteDataSource {
  Future<List<PendingUserModel>> getAllPendingUsers();
  Future<PendingUserModel?> getPendingUser(String uid);
  Future<void> addPendingUser(PendingUserModel user);
  Future<void> updatePendingUser(String uid, PendingUserModel updated);
  Future<void> deletePendingUser(String uid);
  Stream<List<PendingUserModel>> watchPendingUsers();
}

