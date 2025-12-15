part of 'user_bloc.dart';

@freezed
class UserEvent with _$UserEvent {
  const factory UserEvent.getAllUsers() = _GetAllUsers;
  const factory UserEvent.addUser(AddUserParams params) = _AddUser;
  const factory UserEvent.updateUser(String uid, User updated) = _UpdateUser;
  const factory UserEvent.deleteUser(String uid) = _DeleteUser;
  // Emitted internally when the watch stream yields new user lists
  const factory UserEvent.usersUpdated(List<User> users) = _UsersUpdated;
}
