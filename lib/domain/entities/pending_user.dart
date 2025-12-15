// filepath: lib/domain/entities/pending_user.dart
import 'package:freezed_annotation/freezed_annotation.dart';

part 'pending_user.freezed.dart';

@freezed
abstract class PendingUser with _$PendingUser {
  const factory PendingUser({
    required String uid,
    required String status,
    required DateTime firstScannedAt,
    required DateTime lastScannedAt,
  }) = _PendingUser;
}

