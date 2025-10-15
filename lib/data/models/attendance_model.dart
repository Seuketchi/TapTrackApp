import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'attendance_model.freezed.dart';
part 'attendance_model.g.dart';

@freezed
abstract class AttendanceModel with _$AttendanceModel {
  const factory AttendanceModel({
    String? id, // Firestore doc ID
    required String studentId,
    required String name,
    @TimestampConverter() required DateTime timestamp,
    required String status,
  }) = _AttendanceModel;

  factory AttendanceModel.fromJson(Map<String, dynamic> json) =>
      _$AttendanceModelFromJson(json);
}

// Custom converter for Firestore Timestamp
class TimestampConverter implements JsonConverter<DateTime, dynamic> {
  const TimestampConverter();

  @override
  DateTime fromJson(dynamic json) {
    if (json is Timestamp) {
      return json.toDate();
    } else if (json is String) {
      return DateTime.parse(json);
    } else {
      throw Exception('Cannot convert $json to DateTime');
    }
  }

  @override
  dynamic toJson(DateTime date) => Timestamp.fromDate(date);
}
