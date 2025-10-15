// lib/presentation/attendance/bloc/attendance_state.dart
part of 'attendance_bloc.dart';

@freezed
abstract class AttendanceState with _$AttendanceState {
  const factory AttendanceState({
    required DataState<List<Attendance>> attendance,
  }) = _AttendanceState;
}
