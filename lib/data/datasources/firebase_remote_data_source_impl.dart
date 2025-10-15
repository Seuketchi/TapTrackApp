import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:injectable/injectable.dart';

import '../models/attendance_model.dart';
import 'firebase_remote_data_source.dart';

@Singleton(as: FirebaseRemoteDataSource)
class FirebaseRemoteDataSourceImpl implements FirebaseRemoteDataSource {
  final FirebaseFirestore firestore;

  FirebaseRemoteDataSourceImpl({required this.firestore});

  @override
  Future<List<AttendanceModel>> getAllAttendance() async {
    final snapshot = await firestore.collection('attendance').get();
    return snapshot.docs
        .map((doc) => AttendanceModel.fromJson(doc.data()).copyWith(id: doc.id))
        .toList();
  }

  @override
  Future<void> markAttendance(AttendanceModel attendance) async {
    await firestore.collection('attendance').add(attendance.toJson());
  }

  @override
  Future<void> addAttendance(AttendanceModel attendance) async {
    // For now addAttendance performs the same action as markAttendance.
    await firestore.collection('attendance').add(attendance.toJson());
  }

  @override
  Future<void> updateAttendance(String id, AttendanceModel updated) async {
    await firestore.collection('attendance').doc(id).update(updated.toJson());
  }

  @override
  Future<void> deleteAttendance(String id) async {
    await firestore.collection('attendance').doc(id).delete();
  }
}
