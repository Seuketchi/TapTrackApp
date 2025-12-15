// filepath: lib/presentation/bloc/user_bloc.dart
import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

import '../../../../core/error/failures.dart';
import '../../../../core/result/result.dart';
import '../../../../core/usecase/usecase.dart';
import '../../../../core/widget/data_state/data_state.dart';
import '../../domain/entities/user.dart';
import '../../domain/usecases/get_all_users.dart';
import '../../domain/usecases/add_user.dart';
import '../../domain/usecases/update_user.dart';
import '../../domain/usecases/delete_user.dart';
import '../../domain/usecases/watch_users.dart';

part 'user_bloc.freezed.dart';
part 'user_event.dart';
part 'user_state.dart';

@injectable
class UserBloc extends Bloc<UserEvent, UserState> {
  final GetAllUsers getAllUsersUseCase;
  final AddUser addUserUseCase;
  final UpdateUser updateUserUseCase;
  final DeleteUser deleteUserUseCase;
  final WatchUsers watchUsersUseCase;
  // subscription to underlying stream
  StreamSubscription<List<User>>? _watchSub;

  UserBloc(
    this.getAllUsersUseCase,
    this.addUserUseCase,
    this.updateUserUseCase,
    this.deleteUserUseCase,
    this.watchUsersUseCase,
  ) : super(const UserState(users: DataState.loading())) {
    on<_GetAllUsers>(_getAllUsers);
    on<_AddUser>(_addUser);
    on<_UpdateUser>(_updateUser);
    on<_DeleteUser>(_deleteUser);

    // subscribe to watch stream and emit payloads directly to state
    () async {
      final result = await watchUsersUseCase(NoParams());
      switch (result) {
        case ResultSuccess<Stream<List<User>>, Failure>(:final value):
          _watchSub = value.listen((_) {
            // trigger a refresh when underlying data changes
            add(const UserEvent.getAllUsers());
          });
          break;
        case ResultFailure<Stream<List<User>>, Failure>():
          // ignore watch failures here; UI can still fetch manually
          break;
      }
    }();
  }

  Future<void> _getAllUsers(
    _GetAllUsers event,
    Emitter<UserState> emit,
  ) async {
    emit(state.copyWith(users: const DataState.loading()));

    final result = await getAllUsersUseCase(NoParams());
    switch (result) {
      case ResultSuccess<List<User>, Failure>(:final value):
        emit(state.copyWith(users: DataState(value)));
        break;
      case ResultFailure<List<User>, Failure>(:final failure):
        emit(state.copyWith(users: DataState.error(error: failure.message)));
        break;
    }
  }

  Future<void> _addUser(
    _AddUser event,
    Emitter<UserState> emit,
  ) async {
    final result = await addUserUseCase(event.params);
    switch (result) {
      case ResultSuccess<NoReturn, Failure>():
        add(const UserEvent.getAllUsers());
        break;
      case ResultFailure<NoReturn, Failure>(:final failure):
        emit(state.copyWith(users: DataState.error(error: failure.message)));
        break;
    }
  }

  Future<void> _updateUser(
    _UpdateUser event,
    Emitter<UserState> emit,
  ) async {
    final params = UpdateUserParams(event.uid, event.updated);
    final result = await updateUserUseCase(params);
    switch (result) {
      case ResultSuccess<NoReturn, Failure>():
        add(const UserEvent.getAllUsers());
        break;
      case ResultFailure<NoReturn, Failure>(:final failure):
        emit(state.copyWith(users: DataState.error(error: failure.message)));
        break;
    }
  }

  Future<void> _deleteUser(
    _DeleteUser event,
    Emitter<UserState> emit,
  ) async {
    final result = await deleteUserUseCase(DeleteUserParams(event.uid));
    switch (result) {
      case ResultSuccess<NoReturn, Failure>():
        add(const UserEvent.getAllUsers());
        break;
      case ResultFailure<NoReturn, Failure>(:final failure):
        emit(state.copyWith(users: DataState.error(error: failure.message)));
        break;
    }
  }

  @override
  Future<void> close() {
    _watchSub?.cancel();
    return super.close();
  }
}
