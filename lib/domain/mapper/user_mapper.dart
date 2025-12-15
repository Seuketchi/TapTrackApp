// filepath: lib/domain/mapper/user_mapper.dart
import '../../data/models/user_model.dart';
import '../entities/user.dart';

extension UserMapper on UserModel {
  User toDomain() {
    return User(
      uid: uid,
      name: name,
      status: status,
      registeredAt: registeredAt,
    );
  }
}

extension UserModelMapper on User {
  UserModel toModel() {
    return UserModel(
      uid: uid,
      name: name,
      status: status,
      registeredAt: registeredAt,
    );
  }
}

