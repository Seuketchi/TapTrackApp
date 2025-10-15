import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';

import '../../core/widget/data_state/data_state_widget.dart';
import '../../domain/entities/attendance.dart';
import '../bloc/attendance_bloc.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Scaffold(
      appBar: AppBar(
        title: const Text('Attendance Records'),
        centerTitle: true,
        elevation: 2,
        actions: [],
      ),
      body: BlocBuilder<AttendanceBloc, AttendanceState>(
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
                  context.read<AttendanceBloc>().add(
                    const AttendanceEvent.getAllAttendance(),
                  );
                },
                child: ListView.builder(
                  padding: const EdgeInsets.all(16),
                  itemCount: attendances.length,
                  itemBuilder: (_, i) {
                    return _AttendanceCard(attendance: attendances[i]);
                  },
                ),
              );
            },
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: theme.colorScheme.primary,
        foregroundColor: theme.colorScheme.onPrimary,
        onPressed: () => _showAddDialog(context),
        child: const Icon(Icons.add),
      ),
    );
  }

  void _showAddDialog(BuildContext context) {
    final theme = Theme.of(context);
    final nameController = TextEditingController();
    final studentIdController = TextEditingController();

    showDialog(
      context: context,
      builder: (_) => AlertDialog(
        surfaceTintColor: theme.colorScheme.surface,
        title: Text('Add Attendance', style: theme.textTheme.titleLarge),
        content: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            TextField(
              controller: nameController,
              decoration: InputDecoration(
                labelText: 'Name',
                labelStyle: theme.textTheme.bodyMedium,
              ),
            ),
            TextField(
              controller: studentIdController,
              decoration: InputDecoration(
                labelText: 'Student ID',
                labelStyle: theme.textTheme.bodyMedium,
              ),
            ),
          ],
        ),
        actions: [
          TextButton(
            onPressed: () => Navigator.pop(context),
            child: Text('Cancel', style: theme.textTheme.labelLarge),
          ),
          ElevatedButton(
            style: ElevatedButton.styleFrom(
              backgroundColor: theme.colorScheme.primary,
              foregroundColor: theme.colorScheme.onPrimary,
            ),
            onPressed: () {
              final newAttendance = Attendance(
                id: null,
                name: nameController.text,
                studentId: studentIdController.text,
                timestamp: DateTime.now(),
                status: 'absent',
              );
              context.read<AttendanceBloc>().add(
                AttendanceEvent.addAttendance(newAttendance),
              );
              Navigator.pop(context);
            },
            child: const Text('Add'),
          ),
        ],
      ),
    );
  }
}

class _AttendanceCard extends StatelessWidget {
  final Attendance attendance;
  const _AttendanceCard({required this.attendance});

  Color _statusColor(BuildContext context) {
    final scheme = Theme.of(context).colorScheme;
    switch (attendance.status.toLowerCase()) {
      case 'present':
        return scheme.primaryContainer;
      case 'late':
        return scheme.tertiaryContainer;
      case 'absent':
        return scheme.errorContainer;
      default:
        return scheme.surfaceVariant;
    }
  }

  Color _statusTextColor(BuildContext context) {
    final scheme = Theme.of(context).colorScheme;
    switch (attendance.status.toLowerCase()) {
      case 'present':
        return scheme.onPrimaryContainer;
      case 'late':
        return scheme.onTertiaryContainer;
      case 'absent':
        return scheme.onErrorContainer;
      default:
        return scheme.onSurfaceVariant;
    }
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final timestamp = DateFormat(
      'MMM d, yyyy – HH:mm',
    ).format(attendance.timestamp);

    return Card(
      margin: const EdgeInsets.symmetric(vertical: 8),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
      elevation: 3,
      color: _statusColor(context),
      child: ListTile(
        contentPadding: const EdgeInsets.symmetric(
          horizontal: 16,
          vertical: 12,
        ),
        leading: CircleAvatar(
          backgroundColor: _statusTextColor(context),
          child: Text(
            attendance.name[0].toUpperCase(),
            style: theme.textTheme.titleMedium?.copyWith(
              color: _statusColor(context),
            ),
          ),
        ),
        title: Text(
          attendance.name,
          style: theme.textTheme.titleMedium?.copyWith(
            fontWeight: FontWeight.bold,
          ),
        ),
        subtitle: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 4),
            Text(
              'ID: ${attendance.studentId}',
              style: theme.textTheme.bodyMedium,
            ),
            const SizedBox(height: 2),
            Text('Time: $timestamp', style: theme.textTheme.bodySmall),
          ],
        ),
        trailing: Wrap(
          spacing: 4,
          children: [
            IconButton(
              icon: const Icon(Icons.check),
              color: theme.colorScheme.primary,
              tooltip: 'Mark Present',
              onPressed: () {
                context.read<AttendanceBloc>().add(
                  AttendanceEvent.markAttendance(attendance),
                );
              },
            ),
            IconButton(
              icon: const Icon(Icons.edit),
              color: theme.colorScheme.secondary,
              tooltip: 'Update',
              onPressed: () => _showUpdateDialog(context, attendance),
            ),
            IconButton(
              icon: const Icon(Icons.delete),
              color: theme.colorScheme.error,
              tooltip: 'Delete',
              onPressed: () {
                context.read<AttendanceBloc>().add(
                  AttendanceEvent.deleteAttendance(attendance.id!),
                );
              },
            ),
          ],
        ),
      ),
    );
  }

  void _showUpdateDialog(BuildContext context, Attendance a) {
    final theme = Theme.of(context);
    final nameController = TextEditingController(text: a.name);
    final studentIdController = TextEditingController(text: a.studentId);

    showDialog(
      context: context,
      builder: (_) => AlertDialog(
        surfaceTintColor: theme.colorScheme.surface,
        title: Text('Update Attendance', style: theme.textTheme.titleLarge),
        content: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            TextField(
              controller: nameController,
              decoration: InputDecoration(
                labelText: 'Name',
                labelStyle: theme.textTheme.bodyMedium,
              ),
            ),
            TextField(
              controller: studentIdController,
              decoration: InputDecoration(
                labelText: 'Student ID',
                labelStyle: theme.textTheme.bodyMedium,
              ),
            ),
          ],
        ),
        actions: [
          TextButton(
            onPressed: () => Navigator.pop(context),
            child: Text('Cancel', style: theme.textTheme.labelLarge),
          ),
          ElevatedButton(
            style: ElevatedButton.styleFrom(
              backgroundColor: theme.colorScheme.primary,
              foregroundColor: theme.colorScheme.onPrimary,
            ),
            onPressed: () {
              final updatedAttendance = Attendance(
                id: a.id,
                name: nameController.text,
                studentId: studentIdController.text,
                timestamp: a.timestamp,
                status: a.status,
              );
              context.read<AttendanceBloc>().add(
                AttendanceEvent.updateAttendance(a.id!, updatedAttendance),
              );
              Navigator.pop(context);
            },
            child: const Text('Update'),
          ),
        ],
      ),
    );
  }
}
