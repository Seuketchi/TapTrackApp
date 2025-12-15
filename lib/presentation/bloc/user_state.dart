part of 'user_bloc.dart';

@freezed
abstract class UserState with _$UserState {
  const factory UserState({
    required DataState<List<User>> users,
  }) = _UserState;
}
