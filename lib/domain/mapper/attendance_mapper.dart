import '../../data/models/attendance_model.dart';
import '../entities/attendance.dart';

extension AttendanceMapper on AttendanceModel {
  Attendance toDomain() {
    return Attendance(
      id: id,
      studentId: studentId,
      name: name,
      timestamp: timestamp,
      status: status,
    );
  }
}

extension AttendanceModelMapper on Attendance {
  AttendanceModel toModel() {
    return AttendanceModel(
      id: id,
      studentId: studentId,
      name: name,
      timestamp: timestamp,
      status: status,
    );
  }
}
