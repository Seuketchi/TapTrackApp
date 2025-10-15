// dart format width=80
// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:cloud_firestore/cloud_firestore.dart' as _i974;
import 'package:get_it/get_it.dart' as _i174;
import 'package:injectable/injectable.dart' as _i526;

import '../../data/datasources/firebase_remote_data_source.dart' as _i782;
import '../../data/datasources/firebase_remote_data_source_impl.dart' as _i870;
import '../../data/repositories/attendance_repository_impl.dart' as _i696;
import '../../domain/repositories/attendance_repository.dart' as _i217;
import '../../domain/usecases/add_attendance.dart' as _i161;
import '../../domain/usecases/delete_attendance.dart' as _i569;
import '../../domain/usecases/get_all_attendance.dart' as _i1054;
import '../../domain/usecases/mark_attendance.dart' as _i691;
import '../../domain/usecases/update_attendance.dart' as _i1048;
import '../../presentation/bloc/attendance_bloc.dart' as _i1057;
import 'register_module.dart' as _i291;

extension GetItInjectableX on _i174.GetIt {
  // initializes the registration of main-scope dependencies inside of GetIt
  _i174.GetIt init({
    String? environment,
    _i526.EnvironmentFilter? environmentFilter,
  }) {
    final gh = _i526.GetItHelper(this, environment, environmentFilter);
    final registerModule = _$RegisterModule();
    gh.lazySingleton<_i974.FirebaseFirestore>(() => registerModule.firestore);
    gh.singleton<_i782.FirebaseRemoteDataSource>(
      () => _i870.FirebaseRemoteDataSourceImpl(
        firestore: gh<_i974.FirebaseFirestore>(),
      ),
    );
    gh.singleton<_i217.AttendanceRepository>(
      () => _i696.AttendanceRepositoryImpl(
        remoteDataSource: gh<_i782.FirebaseRemoteDataSource>(),
      ),
    );
    gh.factory<_i569.DeleteAttendance>(
      () => _i569.DeleteAttendance(gh<_i217.AttendanceRepository>()),
    );
    gh.factory<_i1048.UpdateAttendance>(
      () => _i1048.UpdateAttendance(gh<_i217.AttendanceRepository>()),
    );
    gh.factory<_i691.MarkAttendance>(
      () => _i691.MarkAttendance(gh<_i217.AttendanceRepository>()),
    );
    gh.factory<_i161.AddAttendance>(
      () => _i161.AddAttendance(gh<_i217.AttendanceRepository>()),
    );
    gh.factory<_i1054.GetAllAttendance>(
      () => _i1054.GetAllAttendance(gh<_i217.AttendanceRepository>()),
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
