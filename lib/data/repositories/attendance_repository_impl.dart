// lib/data/repositories/attendance_repository_impl.dart
import '../../domain/entities/attendance.dart';
import '../../domain/repositories/attendance_repository.dart';
import '../datasources/firebase_remote_data_source.dart';
import '../models/attendance_model.dart';

class AttendanceRepositoryImpl implements AttendanceRepository {
  final FirebaseRemoteDataSource remoteDataSource;

  AttendanceRepositoryImpl({required this.remoteDataSource});

  @override
  Future<List<Attendance>> getAllAttendance() async {
    final models = await remoteDataSource.getAllAttendance();
    return models
        .map((e) => Attendance(
              studentId: e.studentId,
              name: e.name,
              timestamp: e.timestamp,
              status: e.status,
            ))
        .toList();
  }

  @override
  Future<void> markAttendance(Attendance attendance) async {
    final model = AttendanceModel(
      studentId: attendance.studentId,
      name: attendance.name,
      timestamp: attendance.timestamp,
      status: attendance.status,
    );
    await remoteDataSource.markAttendance(model);
  }
}
