// lib/presentation/pages/home_page.dart
import 'package:flutter/material.dart';
import '../../data/models/attendance_model.dart';

class HomePage extends StatelessWidget {
  final List<AttendanceModel> attendanceList;

  const HomePage({Key? key, required this.attendanceList}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('TapTrack Attendance')),
      body: ListView.builder(
        itemCount: attendanceList.length,
        itemBuilder: (context, index) {
          final attendance = attendanceList[index];
          return Card(
            margin: EdgeInsets.all(8),
            child: ListTile(
              leading: Icon(
                attendance.status == 'present'
                    ? Icons.check_circle
                    : Icons.cancel,
                color: attendance.status == 'present'
                    ? Colors.green
                    : Colors.red,
              ),
              title: Text(attendance.name),
              subtitle: Text(
                  'ID: ${attendance.studentId}\nTime: ${attendance.timestamp.toLocal()}'),
            ),
          );
        },
      ),
    );
  }
}
