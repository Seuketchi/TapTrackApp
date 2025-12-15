// filepath: lib/domain/mapper/pending_user_mapper.dart
import '../../data/models/pending_user_model.dart';
import '../entities/pending_user.dart';

extension PendingUserMapper on PendingUserModel {
  PendingUser toDomain() {
    return PendingUser(
      uid: uid,
      status: status,
      firstScannedAt: firstScannedAt,
      lastScannedAt: lastScannedAt,
    );
  }
}

extension PendingUserModelMapper on PendingUser {
  PendingUserModel toModel() {
    return PendingUserModel(
      uid: uid,
      status: status,
      firstScannedAt: firstScannedAt,
      lastScannedAt: lastScannedAt,
    );
  }
}

