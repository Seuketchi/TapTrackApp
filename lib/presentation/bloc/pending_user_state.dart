part of 'pending_user_bloc.dart';

/// Lightweight immutable state used by [PendingUserBloc].
/// Implemented manually to avoid requiring `freezed` code generation here.
class PendingUserState {
  final DataState<List<PendingUser>> pendingUsers;

  const PendingUserState({required this.pendingUsers});

  PendingUserState copyWith({DataState<List<PendingUser>>? pendingUsers}) {
    return PendingUserState(
      pendingUsers: pendingUsers ?? this.pendingUsers,
    );
  }
}
