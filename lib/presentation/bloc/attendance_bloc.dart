import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

import '../../../../core/error/failures.dart';
import '../../../../core/result/result.dart';
import '../../../../core/usecase/usecase.dart';
import '../../../../core/widget/data_state/data_state.dart';
import '../../domain/entities/attendance.dart';
import '../../domain/usecases/add_attendance.dart';
import '../../domain/usecases/delete_attendance.dart';
import '../../domain/usecases/get_all_attendance.dart';
import '../../domain/usecases/mark_attendance.dart';
import '../../domain/usecases/update_attendance.dart';

part 'attendance_bloc.freezed.dart';
part 'attendance_event.dart';
part 'attendance_state.dart';

@injectable
class AttendanceBloc extends Bloc<AttendanceEvent, AttendanceState> {
  final GetAllAttendance getAllAttendanceUseCase;
  final AddAttendance addAttendanceUseCase;
  final UpdateAttendance updateAttendanceUseCase;
  final DeleteAttendance deleteAttendanceUseCase;
  final MarkAttendance markAttendanceUseCase;

  AttendanceBloc(
    this.getAllAttendanceUseCase,
    this.addAttendanceUseCase,
    this.updateAttendanceUseCase,
    this.deleteAttendanceUseCase,
    this.markAttendanceUseCase,
  ) : super(const AttendanceState(attendance: DataState.loading())) {
    on<_GetAllAttendance>(_getAllAttendance);
    on<_AddAttendance>(_addAttendance);
    on<_UpdateAttendance>(_updateAttendance);
    on<_DeleteAttendance>(_deleteAttendance);
    on<_MarkAttendance>(_markAttendance);
  }

  // 🟢 GET ALL
  Future<void> _getAllAttendance(
    _GetAllAttendance event,
    Emitter<AttendanceState> emit,
  ) async {
    emit(state.copyWith(attendance: const DataState.loading()));

    final result = await getAllAttendanceUseCase(NoParams());
    switch (result) {
      case ResultSuccess<List<Attendance>, Failure>(:final value):
        emit(state.copyWith(attendance: DataState(value)));
        break;

      case ResultFailure<List<Attendance>, Failure>(:final failure):
        emit(
          state.copyWith(attendance: DataState.error(error: failure.message)),
        );
        break;
    }
  }

  // 🟢 ADD
  Future<void> _addAttendance(
    _AddAttendance event,
    Emitter<AttendanceState> emit,
  ) async {
    final result = await addAttendanceUseCase(event.attendance);
    switch (result) {
      case ResultSuccess<void, Failure>():
        add(const AttendanceEvent.getAllAttendance());
        break;
      case ResultFailure<void, Failure>(:final failure):
        emit(
          state.copyWith(attendance: DataState.error(error: failure.message)),
        );
        break;
    }
  }

  // 🟢 UPDATE
  Future<void> _updateAttendance(
    _UpdateAttendance event,
    Emitter<AttendanceState> emit,
  ) async {
    final params = UpdateAttendanceParams(
      id: event.id,
      attendance: event.attendance,
    );
    final result = await updateAttendanceUseCase(params);
    switch (result) {
      case ResultSuccess<void, Failure>():
        add(const AttendanceEvent.getAllAttendance());
        break;
      case ResultFailure<void, Failure>(:final failure):
        emit(
          state.copyWith(attendance: DataState.error(error: failure.message)),
        );
        break;
    }
  }

  // 🟢 DELETE
  Future<void> _deleteAttendance(
    _DeleteAttendance event,
    Emitter<AttendanceState> emit,
  ) async {
    final result = await deleteAttendanceUseCase(event.id);
    switch (result) {
      case ResultSuccess<void, Failure>():
        add(const AttendanceEvent.getAllAttendance());
        break;
      case ResultFailure<void, Failure>(:final failure):
        emit(
          state.copyWith(attendance: DataState.error(error: failure.message)),
        );
        break;
    }
  }

  // 🟢 MARK
  Future<void> _markAttendance(
    _MarkAttendance event,
    Emitter<AttendanceState> emit,
  ) async {
    final result = await markAttendanceUseCase(event.attendance);
    switch (result) {
      case ResultSuccess<void, Failure>():
        add(const AttendanceEvent.getAllAttendance());
        break;
      case ResultFailure<void, Failure>(:final failure):
        emit(
          state.copyWith(attendance: DataState.error(error: failure.message)),
        );
        break;
    }
  }
}
