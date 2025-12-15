// filepath: lib/data/repositories/pending_user_repository_impl.dart
import 'package:injectable/injectable.dart';
import 'package:taptrack_app/core/error/failures.dart';

import '../../domain/entities/pending_user.dart';
import '../../domain/repositories/pending_user_repository.dart';
import '../datasources/firebase_pending_user_remote_data_source.dart';
import '../../domain/mapper/pending_user_mapper.dart';

@Singleton(as: PendingUserRepository)
class PendingUserRepositoryImpl implements PendingUserRepository {
  final FirebasePendingUserRemoteDataSource remoteDataSource;

  PendingUserRepositoryImpl({required this.remoteDataSource});

  @override
  Future<List<PendingUser>> getAllPendingUsers() async {
    try {
      final remote = await remoteDataSource.getAllPendingUsers();
      return remote.map((m) => m.toDomain()).toList();
    } catch (e) {
      throw UnexpectedFailure(e.toString());
    }
  }

  @override
  Future<PendingUser> getPendingUser(String uid) async {
    try {
      final remote = await remoteDataSource.getPendingUser(uid);
      if (remote == null) throw UserNotFoundFailure();
      return remote.toDomain();
    } catch (e) {
      if (e is Failure) rethrow;
      throw UnexpectedFailure(e.toString());
    }
  }

  @override
  Future<void> addPendingUser(PendingUser user) async {
    try {
      final model = user.toModel();
      await remoteDataSource.addPendingUser(model);
    } catch (e) {
      throw UnexpectedFailure(e.toString());
    }
  }

  @override
  Future<void> updatePendingUser(String uid, PendingUser updated) async {
    try {
      final model = updated.toModel();
      await remoteDataSource.updatePendingUser(uid, model);
    } catch (e) {
      throw UnexpectedFailure(e.toString());
    }
  }

  @override
  Future<void> deletePendingUser(String uid) async {
    try {
      await remoteDataSource.deletePendingUser(uid);
    } catch (e) {
      throw UnexpectedFailure(e.toString());
    }
  }

  @override
  Stream<List<PendingUser>> watchPendingUsers() {
    return remoteDataSource.watchPendingUsers().map((models) {
      return models.map((m) => m.toDomain()).toList();
    });
  }
}

