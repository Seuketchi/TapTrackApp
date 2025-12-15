import 'dart:async';

import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';
import 'package:taptrack_app/core/di/injection_container.config.dart';

// added imports for manual registrations
import 'package:taptrack_app/domain/usecases/get_all_pending_users.dart';
import 'package:taptrack_app/domain/usecases/add_pending_user.dart';
import 'package:taptrack_app/domain/usecases/update_pending_user.dart';
import 'package:taptrack_app/domain/usecases/delete_pending_user.dart';
import 'package:taptrack_app/domain/repositories/pending_user_repository.dart';
import 'package:taptrack_app/domain/usecases/get_all_users.dart';
import 'package:taptrack_app/domain/usecases/add_user.dart';
import 'package:taptrack_app/domain/usecases/update_user.dart';
import 'package:taptrack_app/domain/usecases/delete_user.dart';
import 'package:taptrack_app/domain/repositories/user_repository.dart';

final getIt = GetIt.instance;

@InjectableInit(
  initializerName: 'init', // default
  preferRelativeImports: true, // default
  asExtension: true, // default
)
FutureOr<void> configureDependencies({String? environment}) async {
  // Run generated registrations first
  await getIt.init(environment: environment);

  // Manually register pending-user usecases if code generation wasn't run
  // (This is a safe no-op if they are already registered.)
  if (!getIt.isRegistered<GetAllPendingUsers>()) {
    getIt.registerFactory<GetAllPendingUsers>(() => GetAllPendingUsers(getIt<PendingUserRepository>()));
  }
  if (!getIt.isRegistered<AddPendingUser>()) {
    getIt.registerFactory<AddPendingUser>(() => AddPendingUser(getIt<PendingUserRepository>()));
  }
  if (!getIt.isRegistered<UpdatePendingUser>()) {
    getIt.registerFactory<UpdatePendingUser>(() => UpdatePendingUser(getIt<PendingUserRepository>()));
  }
  if (!getIt.isRegistered<DeletePendingUser>()) {
    getIt.registerFactory<DeletePendingUser>(() => DeletePendingUser(getIt<PendingUserRepository>()));
  }

  // Manually register user-related usecases if code generation wasn't run
  if (!getIt.isRegistered<GetAllUsers>()) {
    getIt.registerFactory<GetAllUsers>(() => GetAllUsers(getIt<UserRepository>()));
  }
  if (!getIt.isRegistered<AddUser>()) {
    getIt.registerFactory<AddUser>(() => AddUser(getIt<UserRepository>()));
  }
  if (!getIt.isRegistered<UpdateUser>()) {
    getIt.registerFactory<UpdateUser>(() => UpdateUser(getIt<UserRepository>()));
  }
  if (!getIt.isRegistered<DeleteUser>()) {
    getIt.registerFactory<DeleteUser>(() => DeleteUser(getIt<UserRepository>()));
  }

  return;
}
