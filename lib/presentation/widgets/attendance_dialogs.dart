// filepath: lib/presentation/widgets/attendance_dialogs.dart
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../domain/entities/attendance.dart';
import '../bloc/attendance_bloc.dart';

void showAddAttendanceDialog(BuildContext context) {
  final theme = Theme.of(context);
  final nameController = TextEditingController();
  final uidController = TextEditingController();

  showDialog(
    context: context,
    builder: (_) => AlertDialog(
      surfaceTintColor: theme.colorScheme.surface,
      title: Text('Add Attendance', style: theme.textTheme.titleLarge),
      content: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          TextField(controller: nameController, decoration: InputDecoration(labelText: 'Name')),
          TextField(controller: uidController, decoration: InputDecoration(labelText: 'UID')),
        ],
      ),
      actions: [
        TextButton(onPressed: () => Navigator.pop(context), child: Text('Cancel', style: theme.textTheme.labelLarge)),
        ElevatedButton(
          style: ElevatedButton.styleFrom(backgroundColor: theme.colorScheme.primary, foregroundColor: theme.colorScheme.onPrimary),
          onPressed: () {
            final newAttendance = Attendance(id: null, name: nameController.text, uid: uidController.text, timestamp: DateTime.now(), attendanceStatus: 'check-in', registrationStatus: 'registered');
            context.read<AttendanceBloc>().add(AttendanceEvent.addAttendance(newAttendance));
            Navigator.pop(context);
          },
          child: const Text('Add'),
        ),
      ],
    ),
  );
}

void showUpdateAttendanceDialog(BuildContext context, Attendance a) {
  final theme = Theme.of(context);
  final nameController = TextEditingController(text: a.name);
  final uidController = TextEditingController(text: a.uid);

  showDialog(
    context: context,
    builder: (_) => AlertDialog(
      surfaceTintColor: theme.colorScheme.surface,
      title: Text('Update Attendance', style: theme.textTheme.titleLarge),
      content: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          TextField(controller: nameController, decoration: InputDecoration(labelText: 'Name')),
          TextField(controller: uidController, decoration: InputDecoration(labelText: 'UID')),
        ],
      ),
      actions: [
        TextButton(onPressed: () => Navigator.pop(context), child: Text('Cancel', style: theme.textTheme.labelLarge)),
        ElevatedButton(
          style: ElevatedButton.styleFrom(backgroundColor: theme.colorScheme.primary, foregroundColor: theme.colorScheme.onPrimary),
          onPressed: () {
            final updatedAttendance = Attendance(
              id: a.id,
              name: nameController.text,
              uid: uidController.text,
              timestamp: a.timestamp,
              attendanceStatus: a.attendanceStatus,
              registrationStatus: a.registrationStatus,
            );
            context.read<AttendanceBloc>().add(AttendanceEvent.updateAttendance(a.id!, updatedAttendance));
            Navigator.pop(context);
          },
          child: const Text('Update'),
        ),
      ],
    ),
  );
}

