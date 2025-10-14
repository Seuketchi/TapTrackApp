import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:taptrack_app/firebase_options.dart';
import 'package:taptrack_app/presentation/home_page.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);

  // Populate dummy data

  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'TapTrack',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: HomePage(attendanceList: []), // You need to define HomePage
    );
  }
}
