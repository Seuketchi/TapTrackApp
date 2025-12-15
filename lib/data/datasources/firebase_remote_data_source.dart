import '../models/attendance_model.dart';

/// Deprecated generic datasource kept for compatibility. Prefer using
/// `FirebaseAttendanceRemoteDataSource` and `FirebaseUserRemoteDataSource`.
abstract class FirebaseRemoteDataSource {
  Future<List<AttendanceModel>> getAllAttendance();
  Future<void> markAttendance(AttendanceModel attendance);
  Future<void> addAttendance(AttendanceModel attendance);
  Future<void> updateAttendance(String id, AttendanceModel updated);
  Future<void> deleteAttendance(String id);
  Stream<List<AttendanceModel>> watchAttendance();
}
