// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format width=80

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:firebase_database/firebase_database.dart' as _i345;
import 'package:get_it/get_it.dart' as _i174;
import 'package:injectable/injectable.dart' as _i526;

import '../../data/datasources/firebase_attendance_remote_data_source.dart'
    as _i565;
import '../../data/datasources/firebase_pending_user_remote_data_source.dart'
    as _i307;
import '../../data/datasources/firebase_pending_user_remote_data_source_impl.dart'
    as _i646;
import '../../data/datasources/firebase_remote_data_source_impl.dart' as _i870;
import '../../data/datasources/firebase_user_remote_data_source.dart' as _i835;
import '../../data/datasources/firebase_user_remote_data_source_impl.dart'
    as _i533;
import '../../data/repositories/attendance_repository_impl.dart' as _i696;
import '../../data/repositories/pending_user_repository_impl.dart' as _i70;
import '../../data/repositories/user_repository_impl.dart' as _i790;
import '../../domain/repositories/attendance_repository.dart' as _i217;
import '../../domain/repositories/pending_user_repository.dart' as _i39;
import '../../domain/repositories/user_repository.dart' as _i271;
import '../../domain/usecases/add_attendance.dart' as _i161;
import '../../domain/usecases/add_pending_user.dart' as _i442;
import '../../domain/usecases/add_user.dart' as _i701;
import '../../domain/usecases/delete_attendance.dart' as _i569;
import '../../domain/usecases/delete_pending_user.dart' as _i6;
import '../../domain/usecases/delete_user.dart' as _i442;
import '../../domain/usecases/get_all_attendance.dart' as _i1054;
import '../../domain/usecases/get_all_pending_users.dart' as _i800;
import '../../domain/usecases/get_all_users.dart' as _i929;
import '../../domain/usecases/get_user.dart' as _i759;
import '../../domain/usecases/mark_attendance.dart' as _i691;
import '../../domain/usecases/update_attendance.dart' as _i1048;
import '../../domain/usecases/update_pending_user.dart' as _i279;
import '../../domain/usecases/update_user.dart' as _i1036;
import '../../domain/usecases/watch_pending_users.dart' as _i634;
import '../../domain/usecases/watch_users.dart' as _i361;
import '../../presentation/bloc/attendance_bloc.dart' as _i1057;
import '../../presentation/bloc/pending_user_bloc.dart' as _i463;
import '../../presentation/bloc/user_bloc.dart' as _i617;
import 'register_module.dart' as _i291;

extension GetItInjectableX on _i174.GetIt {
  // initializes the registration of main-scope dependencies inside of GetIt
  _i174.GetIt init({
    String? environment,
    _i526.EnvironmentFilter? environmentFilter,
  }) {
    final gh = _i526.GetItHelper(this, environment, environmentFilter);
    final registerModule = _$RegisterModule();
    gh.lazySingleton<_i345.FirebaseDatabase>(
      () => registerModule.realtimeDatabase,
    );
    gh.singleton<_i835.FirebaseUserRemoteDataSource>(
      () => _i533.FirebaseUserRemoteDataSourceImpl(
        database: gh<_i345.FirebaseDatabase>(),
      ),
    );
    gh.singleton<_i565.FirebaseAttendanceRemoteDataSource>(
      () => _i870.FirebaseAttendanceRemoteDataSourceImpl(
        database: gh<_i345.FirebaseDatabase>(),
      ),
    );
    gh.singleton<_i307.FirebasePendingUserRemoteDataSource>(
      () => _i646.FirebasePendingUserRemoteDataSourceImpl(
        database: gh<_i345.FirebaseDatabase>(),
      ),
    );
    gh.singleton<_i271.UserRepository>(
      () => _i790.UserRepositoryImpl(
        remoteDataSource: gh<_i835.FirebaseUserRemoteDataSource>(),
      ),
    );
    gh.singleton<_i39.PendingUserRepository>(
      () => _i70.PendingUserRepositoryImpl(
        remoteDataSource: gh<_i307.FirebasePendingUserRemoteDataSource>(),
      ),
    );
    gh.factory<_i442.AddPendingUser>(
      () => _i442.AddPendingUser(gh<_i39.PendingUserRepository>()),
    );
    gh.factory<_i6.DeletePendingUser>(
      () => _i6.DeletePendingUser(gh<_i39.PendingUserRepository>()),
    );
    gh.factory<_i800.GetAllPendingUsers>(
      () => _i800.GetAllPendingUsers(gh<_i39.PendingUserRepository>()),
    );
    gh.factory<_i279.UpdatePendingUser>(
      () => _i279.UpdatePendingUser(gh<_i39.PendingUserRepository>()),
    );
    gh.factory<_i634.WatchPendingUsers>(
      () => _i634.WatchPendingUsers(gh<_i39.PendingUserRepository>()),
    );
    gh.factory<_i463.PendingUserBloc>(
      () => _i463.PendingUserBloc(
        gh<_i800.GetAllPendingUsers>(),
        gh<_i442.AddPendingUser>(),
        gh<_i279.UpdatePendingUser>(),
        gh<_i6.DeletePendingUser>(),
        gh<_i634.WatchPendingUsers>(),
      ),
    );
    gh.factory<_i701.AddUser>(() => _i701.AddUser(gh<_i271.UserRepository>()));
    gh.factory<_i442.DeleteUser>(
      () => _i442.DeleteUser(gh<_i271.UserRepository>()),
    );
    gh.factory<_i929.GetAllUsers>(
      () => _i929.GetAllUsers(gh<_i271.UserRepository>()),
    );
    gh.factory<_i759.GetUser>(() => _i759.GetUser(gh<_i271.UserRepository>()));
    gh.factory<_i1036.UpdateUser>(
      () => _i1036.UpdateUser(gh<_i271.UserRepository>()),
    );
    gh.factory<_i361.WatchUsers>(
      () => _i361.WatchUsers(gh<_i271.UserRepository>()),
    );
    gh.factory<_i617.UserBloc>(
      () => _i617.UserBloc(
        gh<_i929.GetAllUsers>(),
        gh<_i701.AddUser>(),
        gh<_i1036.UpdateUser>(),
        gh<_i442.DeleteUser>(),
        gh<_i361.WatchUsers>(),
      ),
    );
    gh.singleton<_i217.AttendanceRepository>(
      () => _i696.AttendanceRepositoryImpl(
        remoteDataSource: gh<_i565.FirebaseAttendanceRemoteDataSource>(),
      ),
    );
    gh.factory<_i161.AddAttendance>(
      () => _i161.AddAttendance(gh<_i217.AttendanceRepository>()),
    );
    gh.factory<_i569.DeleteAttendance>(
      () => _i569.DeleteAttendance(gh<_i217.AttendanceRepository>()),
    );
    gh.factory<_i1054.GetAllAttendance>(
      () => _i1054.GetAllAttendance(gh<_i217.AttendanceRepository>()),
    );
    gh.factory<_i691.MarkAttendance>(
      () => _i691.MarkAttendance(gh<_i217.AttendanceRepository>()),
    );
    gh.factory<_i1048.UpdateAttendance>(
      () => _i1048.UpdateAttendance(gh<_i217.AttendanceRepository>()),
    );
    gh.factory<_i1057.AttendanceBloc>(
      () => _i1057.AttendanceBloc(
        gh<_i1054.GetAllAttendance>(),
        gh<_i161.AddAttendance>(),
        gh<_i1048.UpdateAttendance>(),
        gh<_i569.DeleteAttendance>(),
        gh<_i691.MarkAttendance>(),
      ),
    );
    return this;
  }
}

class _$RegisterModule extends _i291.RegisterModule {}
