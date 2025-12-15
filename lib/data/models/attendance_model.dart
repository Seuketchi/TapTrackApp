import 'package:freezed_annotation/freezed_annotation.dart';

part 'attendance_model.freezed.dart';
part 'attendance_model.g.dart';

@freezed
abstract class AttendanceModel with _$AttendanceModel {
  const factory AttendanceModel({
    String? id,
    required String uid,
    required String name,
    @TimestampConverter() required DateTime timestamp,
    required String attendanceStatus,
    required String registrationStatus,
  }) = _AttendanceModel;

  factory AttendanceModel.fromJson(Map<String, dynamic> json) =>
      _$AttendanceModelFromJson(json);
}

// Custom converter for Firebase Realtime Database Timestamp
class TimestampConverter implements JsonConverter<DateTime, dynamic> {
  const TimestampConverter();

  @override
  DateTime fromJson(dynamic json) {
    if (json is String) {
      // Handle ESP32 format: "2025-11-11 14:30:00"
      try {
        return DateTime.parse(json);
      } catch (e) {
        // Try custom format
        final parts = json.split(' ');
        if (parts.length == 2) {
          final dateParts = parts[0].split('-');
          final timeParts = parts[1].split(':');

          return DateTime(
            int.parse(dateParts[0]),
            int.parse(dateParts[1]),
            int.parse(dateParts[2]),
            int.parse(timeParts[0]),
            int.parse(timeParts[1]),
            int.parse(timeParts[2]),
          );
        }
        return DateTime.now();
      }
    } else if (json is int) {
      // Handle timestamp as milliseconds
      return DateTime.fromMillisecondsSinceEpoch(json);
    } else {
      return DateTime.now();
    }
  }

  @override
  dynamic toJson(DateTime date) {
    // Format as ESP32 expects: "YYYY-MM-DD HH:MM:SS"
    return '${date.year.toString().padLeft(4, '0')}-'
        '${date.month.toString().padLeft(2, '0')}-'
        '${date.day.toString().padLeft(2, '0')} '
        '${date.hour.toString().padLeft(2, '0')}:'
        '${date.minute.toString().padLeft(2, '0')}:'
        '${date.second.toString().padLeft(2, '0')}';
  }
}