// lib/data/dummy_data/firebase_dummy_data.dart
import 'package:cloud_firestore/cloud_firestore.dart';

Future<void> populateDummyAttendance() async {
  final firestore = FirebaseFirestore.instance;

  final dummyData = [
    {
      "studentId": "S123456",
      "name": "Juan Dela Cruz",
      "timestamp": Timestamp.now(),
      "status": "present",
    },
    {
      "studentId": "S654321",
      "name": "Maria Santos",
      "timestamp": Timestamp.now(),
      "status": "absent",
    },
    {
      "studentId": "S111222",
      "name": "Luis Ramirez",
      "timestamp": Timestamp.now(),
      "status": "present",
    },
  ];

  for (var data in dummyData) {
    await firestore.collection('attendance').add(data);
  }

  print("Dummy attendance data added to Firebase!");
}
