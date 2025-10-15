// import 'package:flutter/material.dart';
// import 'package:flutter_bloc/flutter_bloc.dart';
//
// import '../../domain/entities/attendance.dart';
// import '../bloc/attendance_bloc.dart';
//
// void showAddEditDialog(BuildContext context, {Attendance? attendance}) {
//   final isEdit = attendance != null;
//   final nameController = TextEditingController(text: attendance?.name ?? '');
//   final studentIdController = TextEditingController(
//     text: attendance?.studentId ?? '',
//   );
//   final statusController = TextEditingController(
//     text: attendance?.status ?? 'absent',
//   );
//
//   showDialog(
//     context: context,
//     builder: (context) {
//       return AlertDialog(
//         title: Text(isEdit ? 'Edit Attendance' : 'Add Attendance'),
//         content: Column(
//           mainAxisSize: MainAxisSize.min,
//           children: [
//             TextField(
//               controller: nameController,
//               decoration: const InputDecoration(labelText: 'Name'),
//             ),
//             TextField(
//               controller: studentIdController,
//               decoration: const InputDecoration(labelText: 'Student ID'),
//             ),
//             DropdownButtonFormField<String>(
//               value: statusController.text,
//               decoration: const InputDecoration(labelText: 'Status'),
//               items: const [
//                 DropdownMenuItem(value: 'present', child: Text('Present')),
//                 DropdownMenuItem(value: 'absent', child: Text('Absent')),
//               ],
//               onChanged: (value) {
//                 if (value != null) statusController.text = value;
//               },
//             ),
//           ],
//         ),
//         actions: [
//           TextButton(
//             onPressed: () => Navigator.of(context).pop(),
//             child: const Text('Cancel'),
//           ),
//           ElevatedButton(
//             onPressed: () {
//               final newAttendance = Attendance(
//                 id: attendance?.id,
//                 name: nameController.text,
//                 studentId: studentIdController.text,
//                 status: statusController.text,
//                 timestamp: DateTime.now(),
//               );
//
//               final bloc = context.read<AttendanceBloc>();
//               if (isEdit) {
//                 bloc.add(
//                   AttendanceEvent.updateAttendance(
//                     attendance!.id!,
//                     newAttendance,
//                   ),
//                 );
//               } else {
//                 bloc.add(AttendanceEvent.addAttendance(newAttendance));
//               }
//
//               Navigator.of(context).pop();
//             },
//             child: Text(isEdit ? 'Save' : 'Add'),
//           ),
//         ],
//       );
//     },
//   );
// }
