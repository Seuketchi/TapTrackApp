// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pending_user_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_PendingUserModel _$PendingUserModelFromJson(Map<String, dynamic> json) =>
    _PendingUserModel(
      uid: json['uid'] as String,
      status: json['status'] as String,
      firstScannedAt: const TimestampConverter().fromJson(
        json['firstScannedAt'],
      ),
      lastScannedAt: const TimestampConverter().fromJson(json['lastScannedAt']),
    );

Map<String, dynamic> _$PendingUserModelToJson(
  _PendingUserModel instance,
) => <String, dynamic>{
  'uid': instance.uid,
  'status': instance.status,
  'firstScannedAt': const TimestampConverter().toJson(instance.firstScannedAt),
  'lastScannedAt': const TimestampConverter().toJson(instance.lastScannedAt),
};
