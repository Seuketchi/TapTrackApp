// filepath: lib/domain/repositories/pending_user_repository.dart
import '../entities/pending_user.dart';

abstract class PendingUserRepository {
  Future<List<PendingUser>> getAllPendingUsers();
  Future<PendingUser> getPendingUser(String uid);
  Future<void> addPendingUser(PendingUser user);
  Future<void> updatePendingUser(String uid, PendingUser updated);
  Future<void> deletePendingUser(String uid);
  Stream<List<PendingUser>> watchPendingUsers();
}

