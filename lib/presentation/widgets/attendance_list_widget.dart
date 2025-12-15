// filepath: lib/presentation/widgets/attendance_list_widget.dart
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';

import '../bloc/attendance_bloc.dart';
import '../../domain/entities/attendance.dart';
import '../../core/widget/data_state/data_state_widget.dart';
import 'package:taptrack_app/presentation/widgets/attendance_dialogs.dart';

class AttendanceListWidget extends StatelessWidget {
  const AttendanceListWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return BlocBuilder<AttendanceBloc, AttendanceState>(
      builder: (context, state) {
        return DataStateWidget<List<Attendance>>(
          state: state.attendance,
          loadingBuilder: (_) => Center(
            child: CircularProgressIndicator(
              color: theme.colorScheme.primary,
            ),
          ),
          errorBuilder: (_, error, __) => Center(
            child: Text('Error: $error', style: theme.textTheme.bodyMedium),
          ),
          childBuilder: (_, attendances) {
            if (attendances.isEmpty) {
              return Center(
                child: Text(
                  'No attendance records',
                  style: theme.textTheme.titleMedium?.copyWith(
                    color: theme.colorScheme.onSurfaceVariant,
                  ),
                ),
              );
            }

            return RefreshIndicator(
              color: theme.colorScheme.primary,
              onRefresh: () async {
                context
                    .read<AttendanceBloc>()
                    .add(const AttendanceEvent.getAllAttendance());
              },
              child: ListView.builder(
                padding: const EdgeInsets.all(16),
                itemCount: attendances.length,
                itemBuilder: (_, i) {
                  return AttendanceCard(attendance: attendances[i]);
                },
              ),
            );
          },
        );
      },
    );
  }
}

class AttendanceCard extends StatelessWidget {
  final Attendance attendance;
  const AttendanceCard({required this.attendance});

  Color _statusColor(BuildContext context) {
    final scheme = Theme.of(context).colorScheme;

    if (attendance.registrationStatus == 'unregistered') {
      return scheme.errorContainer;
    }

    switch (attendance.attendanceStatus) {
      case 'check-in':
        return scheme.primaryContainer;
      case 'check-out':
        return scheme.tertiaryContainer;
      default:
        return scheme.surfaceVariant;
    }
  }

  Color _statusTextColor(BuildContext context) {
    final scheme = Theme.of(context).colorScheme;

    if (attendance.registrationStatus == 'unregistered') {
      return scheme.onErrorContainer;
    }

    switch (attendance.attendanceStatus) {
      case 'check-in':
        return scheme.onPrimaryContainer;
      case 'check-out':
        return scheme.onTertiaryContainer;
      default:
        return scheme.onSurfaceVariant;
    }
  }

  String _getStatusIcon() {
    if (attendance.registrationStatus == 'unregistered') {
      return '⚠️';
    }
    return attendance.attendanceStatus == 'check-in' ? '📥' : '📤';
  }

  String _getStatusText() {
    if (attendance.registrationStatus == 'unregistered') {
      return 'Unregistered';
    }
    return attendance.attendanceStatus == 'check-in' ? 'Check In' : 'Check Out';
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final timestamp = DateFormat('MMM d, yyyy – HH:mm').format(attendance.timestamp);

    return Card(
      margin: const EdgeInsets.symmetric(vertical: 8),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
      elevation: 3,
      color: _statusColor(context),
      child: ListTile(
        contentPadding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
        leading: CircleAvatar(
          backgroundColor: _statusTextColor(context),
          child: Text(
            _getStatusIcon(),
            style: theme.textTheme.titleLarge,
          ),
        ),
        title: Text(
          attendance.name,
          style: theme.textTheme.titleMedium?.copyWith(fontWeight: FontWeight.bold),
        ),
        subtitle: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 4),
            Text('UID: ${attendance.uid}', style: theme.textTheme.bodyMedium),
            const SizedBox(height: 2),
            Text('Time: $timestamp', style: theme.textTheme.bodySmall),
            const SizedBox(height: 4),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 2),
              decoration: BoxDecoration(
                color: _statusTextColor(context).withOpacity(0.2),
                borderRadius: BorderRadius.circular(4),
              ),
              child: Text(
                _getStatusText(),
                style: theme.textTheme.bodySmall?.copyWith(
                  color: _statusTextColor(context),
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ],
        ),
        trailing: Wrap(
          spacing: 4,
          children: [
            IconButton(
              icon: const Icon(Icons.edit),
              color: theme.colorScheme.secondary,
              tooltip: 'Update',
              onPressed: () => showUpdateAttendanceDialog(context, attendance),
            ),
            IconButton(
              icon: const Icon(Icons.delete),
              color: theme.colorScheme.error,
              tooltip: 'Delete',
              onPressed: () {
                context.read<AttendanceBloc>().add(AttendanceEvent.deleteAttendance(attendance.id!));
              },
            ),
          ],
        ),
      ),
    );
  }
}
