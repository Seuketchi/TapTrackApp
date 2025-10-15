// attendance_repository_impl.dart
import 'package:injectable/injectable.dart';
import 'package:taptrack_app/core/error/failures.dart';
import 'package:taptrack_app/core/result/result.dart';
import 'package:taptrack_app/domain/mapper/attendance_mapper.dart';

import '../../domain/entities/attendance.dart';
import '../../domain/repositories/attendance_repository.dart';
import '../datasources/firebase_remote_data_source.dart';

@Singleton(as: AttendanceRepository)
class AttendanceRepositoryImpl implements AttendanceRepository {
  final FirebaseRemoteDataSource remoteDataSource;

  AttendanceRepositoryImpl({required this.remoteDataSource});

  @override
  Future<Result<List<Attendance>, Failure>> getAllAttendance() async {
    try {
      final remoteAttendances = await remoteDataSource.getAllAttendance();
      final attendances = remoteAttendances
          .map((model) => model.toDomain())
          .toList();
      return Result(attendances);
    } catch (e) {
      return Result.failure(UnexpectedFailure(e.toString()));
    }
  }

  @override
  Future<Result<void, Failure>> markAttendance(Attendance attendance) async {
    try {
      final model = attendance.toModel();
      await remoteDataSource.markAttendance(model);
      return Result(null);
    } catch (e) {
      return Result.failure(UnexpectedFailure(e.toString()));
    }
  }

  @override
  Future<Result<void, Failure>> addAttendance(Attendance attendance) async {
    try {
      final model = attendance.toModel();
      await remoteDataSource.addAttendance(model);
      return Result(null);
    } catch (e) {
      return Result.failure(UnexpectedFailure(e.toString()));
    }
  }

  @override
  Future<Result<void, Failure>> updateAttendance(
    String id,
    Attendance attendance,
  ) async {
    try {
      final model = attendance.toModel();
      await remoteDataSource.updateAttendance(id, model);
      return Result(null);
    } catch (e) {
      return Result.failure(UnexpectedFailure(e.toString()));
    }
  }

  @override
  Future<Result<void, Failure>> deleteAttendance(String id) async {
    try {
      await remoteDataSource.deleteAttendance(id);
      return Result(null);
    } catch (e) {
      return Result.failure(UnexpectedFailure(e.toString()));
    }
  }
}
