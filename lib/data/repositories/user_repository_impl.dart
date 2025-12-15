// filepath: lib/data/repositories/user_repository_impl.dart
import 'package:injectable/injectable.dart';
import 'package:taptrack_app/core/error/failures.dart';

import '../../domain/entities/user.dart';
import '../../domain/repositories/user_repository.dart';
import '../datasources/firebase_user_remote_data_source.dart';
import '../../domain/mapper/user_mapper.dart';

@Singleton(as: UserRepository)
class UserRepositoryImpl implements UserRepository {
  final FirebaseUserRemoteDataSource remoteDataSource;

  UserRepositoryImpl({required this.remoteDataSource});

  @override
  Future<List<User>> getAllUsers() async {
    try {
      final remote = await remoteDataSource.getAllUsers();
      final users = remote.map((m) => m.toDomain()).toList();
      return users;
    } catch (e) {
      // Convert unexpected errors into a Failure thrown as exception so callers
      // (use cases) can catch Failure if they choose to.
      throw UnexpectedFailure(e.toString());
    }
  }

  @override
  Future<User> getUser(String uid) async {
    try {
      final remote = await remoteDataSource.getUser(uid);
      if (remote == null) throw UserNotFoundFailure();
      return remote.toDomain();
    } catch (e) {
      if (e is Failure) rethrow;
      throw UnexpectedFailure(e.toString());
    }
  }

  @override
  Future<void> addUser(User user) async {
    try {
      final model = user.toModel();
      await remoteDataSource.addUser(model);
    } catch (e) {
      throw UnexpectedFailure(e.toString());
    }
  }

  @override
  Future<void> updateUser(String uid, User updated) async {
    try {
      final model = updated.toModel();
      await remoteDataSource.updateUser(uid, model);
    } catch (e) {
      throw UnexpectedFailure(e.toString());
    }
  }

  @override
  Future<void> deleteUser(String uid) async {
    try {
      await remoteDataSource.deleteUser(uid);
    } catch (e) {
      throw UnexpectedFailure(e.toString());
    }
  }

  @override
  Stream<List<User>> watchUsers() {
    return remoteDataSource.watchUsers().map((models) {
      return models.map((m) => m.toDomain()).toList();
    });
  }
}
