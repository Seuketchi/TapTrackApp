part of 'attendance_bloc.dart';

@freezed
class AttendanceEvent with _$AttendanceEvent {
  const factory AttendanceEvent.getAllAttendance() = _GetAllAttendance;
  const factory AttendanceEvent.addAttendance(Attendance attendance) =
      _AddAttendance;
  const factory AttendanceEvent.updateAttendance(
    String id,
    Attendance attendance,
  ) = _UpdateAttendance;
  const factory AttendanceEvent.deleteAttendance(String id) = _DeleteAttendance;
  const factory AttendanceEvent.markAttendance(Attendance attendance) =
      _MarkAttendance;
}
