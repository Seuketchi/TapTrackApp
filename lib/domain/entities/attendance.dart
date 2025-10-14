// lib/domain/entities/attendance.dart
class Attendance {
  final String studentId;
  final String name;
  final DateTime timestamp;
  final String status;

  Attendance({
    required this.studentId,
    required this.name,
    required this.timestamp,
    required this.status,
  });
}
