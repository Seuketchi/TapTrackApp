// lib/data/datasources/firebase_remote_data_source.dart
import 'package:cloud_firestore/cloud_firestore.dart';
import '../models/attendance_model.dart';

class FirebaseRemoteDataSource {
  final FirebaseFirestore firestore;

  FirebaseRemoteDataSource({required this.firestore});

  Future<List<AttendanceModel>> getAllAttendance() async {
    final snapshot = await firestore.collection('attendance').get();
    return snapshot.docs
        .map((doc) => AttendanceModel.fromJson(doc.data()))
        .toList();
  }

  Future<void> markAttendance(AttendanceModel attendance) async {
    await firestore.collection('attendance').add(attendance.toJson());
  }
}
