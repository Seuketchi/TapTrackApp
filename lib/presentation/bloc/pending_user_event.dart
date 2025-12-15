part of 'pending_user_bloc.dart';

@freezed
class PendingUserEvent with _$PendingUserEvent {
  const factory PendingUserEvent.getAllPendingUsers() = _GetAllPendingUsers;
  const factory PendingUserEvent.addPendingUser(AddPendingUserParams params) = _AddPendingUser;
  const factory PendingUserEvent.updatePendingUser(String uid, PendingUser updated) = _UpdatePendingUser;
  const factory PendingUserEvent.deletePendingUser(String uid) = _DeletePendingUser;
  const factory PendingUserEvent.pendingUsersUpdated(List<PendingUser> users) = _PendingUsersUpdated;
}
