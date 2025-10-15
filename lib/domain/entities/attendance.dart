// lib/domain/entities/attendance.dart
import 'package:freezed_annotation/freezed_annotation.dart';

part 'attendance.freezed.dart';

@freezed
abstract class Attendance with _$Attendance {
  const factory Attendance({
    String? id,
    required String studentId,
    required String name,
    required DateTime timestamp,
    required String status,
  }) = _Attendance;
}
