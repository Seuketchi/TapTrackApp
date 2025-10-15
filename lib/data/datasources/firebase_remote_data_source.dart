import '../models/attendance_model.dart';

abstract class FirebaseRemoteDataSource {
  Future<List<AttendanceModel>> getAllAttendance();

  Future<void> markAttendance(AttendanceModel attendance);

  Future<void> addAttendance(AttendanceModel attendance);

  Future<void> updateAttendance(String id, AttendanceModel updated);

  Future<void> deleteAttendance(String id);
}
