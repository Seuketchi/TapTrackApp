// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'attendance_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_AttendanceModel _$AttendanceModelFromJson(Map<String, dynamic> json) =>
    _AttendanceModel(
      id: json['id'] as String?,
      studentId: json['studentId'] as String,
      name: json['name'] as String,
      timestamp: const TimestampConverter().fromJson(json['timestamp']),
      status: json['status'] as String,
    );

Map<String, dynamic> _$AttendanceModelToJson(_AttendanceModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'studentId': instance.studentId,
      'name': instance.name,
      'timestamp': const TimestampConverter().toJson(instance.timestamp),
      'status': instance.status,
    };
