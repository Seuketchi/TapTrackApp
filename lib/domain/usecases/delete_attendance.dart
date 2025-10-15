import 'package:injectable/injectable.dart';
import 'package:taptrack_app/core/error/failures.dart';
import 'package:taptrack_app/core/usecase/usecase.dart';
import 'package:taptrack_app/domain/repositories/attendance_repository.dart';

import '../../core/result/result.dart';

@injectable
class DeleteAttendance implements UseCase<void, String> {
  final AttendanceRepository repository;

  DeleteAttendance(this.repository);

  @override
  Future<Result<void, Failure>> call(String id) async {
    return await repository.deleteAttendance(id);
  }
}
