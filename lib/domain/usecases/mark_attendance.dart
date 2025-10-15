import 'package:injectable/injectable.dart';
import 'package:taptrack_app/core/error/failures.dart';
import 'package:taptrack_app/core/usecase/usecase.dart';
import 'package:taptrack_app/domain/repositories/attendance_repository.dart';

import '../../core/result/result.dart';
import '../entities/attendance.dart';

@injectable
class MarkAttendance implements UseCase<void, Attendance> {
  final AttendanceRepository repository;

  MarkAttendance(this.repository);

  @override
  Future<Result<void, Failure>> call(Attendance attendance) async {
    return await repository.markAttendance(attendance);
  }
}
