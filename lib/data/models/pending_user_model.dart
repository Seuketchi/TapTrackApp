// filepath: lib/data/models/pending_user_model.dart
import 'package:freezed_annotation/freezed_annotation.dart';

part 'pending_user_model.freezed.dart';
part 'pending_user_model.g.dart';

@freezed
abstract class PendingUserModel with _$PendingUserModel {
  const factory PendingUserModel({
    required String uid,
    required String status,
    @TimestampConverter() required DateTime firstScannedAt,
    @TimestampConverter() required DateTime lastScannedAt,
  }) = _PendingUserModel;

  factory PendingUserModel.fromJson(Map<String, dynamic> json) =>
      _$PendingUserModelFromJson(json);
}

// Reuse timestamp converter logic from attendance model
class TimestampConverter implements JsonConverter<DateTime, dynamic> {
  const TimestampConverter();

  @override
  DateTime fromJson(dynamic json) {
    if (json is String) {
      try {
        return DateTime.parse(json);
      } catch (e) {
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
      return DateTime.fromMillisecondsSinceEpoch(json);
    } else {
      return DateTime.now();
    }
  }

  @override
  dynamic toJson(DateTime date) {
    return '${date.year.toString().padLeft(4, '0')}-'
        '${date.month.toString().padLeft(2, '0')}-'
        '${date.day.toString().padLeft(2, '0')} '
        '${date.hour.toString().padLeft(2, '0')}:'
        '${date.minute.toString().padLeft(2, '0')}:'
        '${date.second.toString().padLeft(2, '0')}';
  }
}

