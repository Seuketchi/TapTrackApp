import 'package:firebase_database/firebase_database.dart';
import 'package:injectable/injectable.dart';

@module
abstract class RegisterModule {
  @lazySingleton
  FirebaseDatabase get realtimeDatabase => FirebaseDatabase.instance;
}
