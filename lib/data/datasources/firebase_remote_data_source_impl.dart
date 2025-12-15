import 'package:firebase_database/firebase_database.dart';
import 'package:injectable/injectable.dart';
import '../models/attendance_model.dart';
import 'firebase_attendance_remote_data_source.dart';

@Singleton(as: FirebaseAttendanceRemoteDataSource)
class FirebaseAttendanceRemoteDataSourceImpl implements FirebaseAttendanceRemoteDataSource {
  final FirebaseDatabase database;

  FirebaseAttendanceRemoteDataSourceImpl({required this.database});

  @override
  Future<List<AttendanceModel>> getAllAttendance() async {
    final snapshot = await database.ref('attendance').get();

    if (!snapshot.exists) return [];

    final data = Map<String, dynamic>.from(snapshot.value as Map);

    return data.entries.map((entry) {
      return AttendanceModel.fromJson(
        Map<String, dynamic>.from(entry.value),
      ).copyWith(id: entry.key);
    }).toList();
  }

  @override
  Future<void> markAttendance(AttendanceModel attendance) async {
    await database.ref('attendance').push().set(attendance.toJson());
  }

  @override
  Future<void> addAttendance(AttendanceModel attendance) async {
    await markAttendance(attendance);
  }

  @override
  Future<void> updateAttendance(String id, AttendanceModel updated) async {
    await database.ref('attendance/$id').update(updated.toJson());
  }

  @override
  Future<void> deleteAttendance(String id) async {
    await database.ref('attendance/$id').remove();
  }

  @override
  Stream<List<AttendanceModel>> watchAttendance() {
    return database.ref('attendance').onValue.map((event) {
      if (event.snapshot.value == null) return [];
      final data = Map<String, dynamic>.from(event.snapshot.value as Map);

      return data.entries.map((entry) {
        return AttendanceModel.fromJson(
          Map<String, dynamic>.from(entry.value),
        ).copyWith(id: entry.key);
      }).toList();
    });
  }
}