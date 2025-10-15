import 'package:taptrack_app/core/error/failures.dart';
import 'package:taptrack_app/domain/entities/attendance.dart';

import '../../core/result/result.dart';

abstract class AttendanceRepository {
  Future<Result<List<Attendance>, Failure>> getAllAttendance();
  Future<Result<void, Failure>> markAttendance(Attendance attendance);
  Future<Result<void, Failure>> addAttendance(Attendance attendance);
  Future<Result<void, Failure>> updateAttendance(
    String id,
    Attendance attendance,
  );
  Future<Result<void, Failure>> deleteAttendance(String id);
}
