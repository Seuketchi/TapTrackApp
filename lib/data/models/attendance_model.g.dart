// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'attendance_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_AttendanceModel _$AttendanceModelFromJson(Map<String, dynamic> json) =>
    _AttendanceModel(
      id: json['id'] as String?,
      uid: json['uid'] as String,
      name: json['name'] as String,
      timestamp: const TimestampConverter().fromJson(json['timestamp']),
      attendanceStatus: json['attendanceStatus'] as String,
      registrationStatus: json['registrationStatus'] as String,
    );

Map<String, dynamic> _$AttendanceModelToJson(_AttendanceModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'uid': instance.uid,
      'name': instance.name,
      'timestamp': const TimestampConverter().toJson(instance.timestamp),
      'attendanceStatus': instance.attendanceStatus,
      'registrationStatus': instance.registrationStatus,
    };
