// lib/domain/repositories/attendance_repository.dart
import '../entities/attendance.dart';

abstract class AttendanceRepository {
  Future<List<Attendance>> getAllAttendance();
  Future<void> markAttendance(Attendance attendance);
}
