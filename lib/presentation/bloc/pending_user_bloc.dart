// filepath: lib/presentation/bloc/pending_user_bloc.dart
import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

import '../../../../core/error/failures.dart';
import '../../../../core/result/result.dart';
import '../../../../core/usecase/usecase.dart';
import '../../../../core/widget/data_state/data_state.dart';
import '../../domain/entities/pending_user.dart';
import '../../domain/usecases/get_all_pending_users.dart';
import '../../domain/usecases/add_pending_user.dart';
import '../../domain/usecases/update_pending_user.dart';
import '../../domain/usecases/delete_pending_user.dart';
import '../../domain/usecases/watch_pending_users.dart';

part 'pending_user_bloc.freezed.dart';
part 'pending_user_event.dart';
part 'pending_user_state.dart';

@injectable
class PendingUserBloc extends Bloc<PendingUserEvent, PendingUserState> {
  final GetAllPendingUsers getAllPendingUsersUseCase;
  final AddPendingUser addPendingUserUseCase;
  final UpdatePendingUser updatePendingUserUseCase;
  final DeletePendingUser deletePendingUserUseCase;
  final WatchPendingUsers watchPendingUsersUseCase;
  StreamSubscription<List<PendingUser>>? _watchSub;

  PendingUserBloc(
    this.getAllPendingUsersUseCase,
    this.addPendingUserUseCase,
    this.updatePendingUserUseCase,
    this.deletePendingUserUseCase,
    this.watchPendingUsersUseCase,
  ) : super(const PendingUserState(pendingUsers: DataState.loading())) {
    on<_GetAllPendingUsers>(_getAllPendingUsers);
    on<_AddPendingUser>(_addPendingUser);
    on<_UpdatePendingUser>(_updatePendingUser);
    on<_DeletePendingUser>(_deletePendingUser);
    on<_PendingUsersUpdated>((event, emit) => emit(state.copyWith(pendingUsers: DataState(event.users))));

    // subscribe to watch stream and emit payloads directly to state
    () async {
      final result = await watchPendingUsersUseCase(NoParams());
      switch (result) {
        case ResultSuccess<Stream<List<PendingUser>>, Failure>(:final value):
          _watchSub = value.listen((users) {
            add(PendingUserEvent.pendingUsersUpdated(users));
          });
          break;
        case ResultFailure<Stream<List<PendingUser>>, Failure>(:final failure):
          break;
      }
    }();
  }

  @override
  Future<void> close() {
    _watchSub?.cancel();
    return super.close();
  }

  Future<void> _getAllPendingUsers(
    _GetAllPendingUsers event,
    Emitter<PendingUserState> emit,
  ) async {
    emit(state.copyWith(pendingUsers: const DataState.loading()));

    final result = await getAllPendingUsersUseCase(NoParams());
    switch (result) {
      case ResultSuccess<List<PendingUser>, Failure>(:final value):
        emit(state.copyWith(pendingUsers: DataState(value)));
        break;
      case ResultFailure<List<PendingUser>, Failure>(:final failure):
        emit(state.copyWith(pendingUsers: DataState.error(error: failure.message)));
        break;
    }
  }

  Future<void> _addPendingUser(
    _AddPendingUser event,
    Emitter<PendingUserState> emit,
  ) async {
    final result = await addPendingUserUseCase(event.params);
    switch (result) {
      case ResultSuccess<NoReturn, Failure>():
        add(const PendingUserEvent.getAllPendingUsers());
        break;
      case ResultFailure<NoReturn, Failure>(:final failure):
        emit(state.copyWith(pendingUsers: DataState.error(error: failure.message)));
        break;
    }
  }

  Future<void> _updatePendingUser(
    _UpdatePendingUser event,
    Emitter<PendingUserState> emit,
  ) async {
    final params = UpdatePendingUserParams(event.uid, event.updated);
    final result = await updatePendingUserUseCase(params);
    switch (result) {
      case ResultSuccess<NoReturn, Failure>():
        add(const PendingUserEvent.getAllPendingUsers());
        break;
      case ResultFailure<NoReturn, Failure>(:final failure):
        emit(state.copyWith(pendingUsers: DataState.error(error: failure.message)));
        break;
    }
  }

  Future<void> _deletePendingUser(
    _DeletePendingUser event,
    Emitter<PendingUserState> emit,
  ) async {
    final result = await deletePendingUserUseCase(event.uid);
    switch (result) {
      case ResultSuccess<NoReturn, Failure>():
        add(const PendingUserEvent.getAllPendingUsers());
        break;
      case ResultFailure<NoReturn, Failure>(:final failure):
        emit(state.copyWith(pendingUsers: DataState.error(error: failure.message)));
        break;
    }
  }
}
