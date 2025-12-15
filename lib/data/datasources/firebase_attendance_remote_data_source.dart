// filepath: lib/data/datasources/firebase_attendance_remote_data_source.dart
import '../models/attendance_model.dart';

abstract class FirebaseAttendanceRemoteDataSource {
  Future<List<AttendanceModel>> getAllAttendance();
  Future<void> markAttendance(AttendanceModel attendance);
  Future<void> addAttendance(AttendanceModel attendance);
  Future<void> updateAttendance(String id, AttendanceModel updated);
  Future<void> deleteAttendance(String id);
  Stream<List<AttendanceModel>> watchAttendance();
}

