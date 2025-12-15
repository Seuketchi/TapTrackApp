// lib/domain/entities/attendance.dart
import 'package:freezed_annotation/freezed_annotation.dart';

part 'attendance.freezed.dart';

@freezed
abstract class Attendance with _$Attendance {
  const factory Attendance({
    String? id,
    required String uid,
    required String name,
    required DateTime timestamp,
    required String attendanceStatus,
    required String registrationStatus,
  }) = _Attendance;
}