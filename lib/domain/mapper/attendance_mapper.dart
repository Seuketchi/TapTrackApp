import '../../data/models/attendance_model.dart';
import '../entities/attendance.dart';

extension AttendanceMapper on AttendanceModel {
  Attendance toDomain() {
    return Attendance(
      id: id,
      uid: uid,
      name: name,
      timestamp: timestamp,
      attendanceStatus: attendanceStatus,
      registrationStatus: registrationStatus,
    );
  }
}

extension AttendanceModelMapper on Attendance {
  AttendanceModel toModel() {
    return AttendanceModel(
      id: id,
      uid: uid,
      name: name,
      timestamp: timestamp,
      attendanceStatus: attendanceStatus,
      registrationStatus: registrationStatus,
    );
  }
}