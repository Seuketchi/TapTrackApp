import 'package:injectable/injectable.dart';
import 'package:taptrack_app/core/error/failures.dart';
import 'package:taptrack_app/core/usecase/usecase.dart';
import 'package:taptrack_app/domain/entities/attendance.dart';
import 'package:taptrack_app/domain/repositories/attendance_repository.dart';

import '../../core/result/result.dart';

@injectable
class AddAttendance implements UseCase<void, Attendance> {
  final AttendanceRepository repository;

  AddAttendance(this.repository);

  @override
  Future<Result<void, Failure>> call(Attendance attendance) async {
    return await repository.addAttendance(attendance);
  }
}
