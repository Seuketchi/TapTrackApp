import 'package:injectable/injectable.dart';
import 'package:taptrack_app/core/error/failures.dart';
import 'package:taptrack_app/core/usecase/usecase.dart';
import 'package:taptrack_app/domain/entities/attendance.dart';
import 'package:taptrack_app/domain/repositories/attendance_repository.dart';

import '../../core/result/result.dart';

@injectable
class UpdateAttendance implements UseCase<void, UpdateAttendanceParams> {
  final AttendanceRepository repository;

  UpdateAttendance(this.repository);

  @override
  Future<Result<void, Failure>> call(UpdateAttendanceParams params) async {
    return await repository.updateAttendance(params.id, params.attendance);
  }
}

class UpdateAttendanceParams {
  final String id;
  final Attendance attendance;

  UpdateAttendanceParams({required this.id, required this.attendance});
}
