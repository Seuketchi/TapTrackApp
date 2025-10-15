import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:taptrack_app/presentation/bloc/attendance_bloc.dart';
import 'package:taptrack_app/presentation/pages/home_page.dart';

import 'core/di/injection_container.dart';
import 'firebase_options.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  // Initialize Firebase
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);

  // Initialize dependency injection
  await configureDependencies();

  runApp(const TapTrackApp());
}

class TapTrackApp extends StatelessWidget {
  const TapTrackApp({super.key});

  @override
  Widget build(BuildContext context) {
    // Seed color for dynamic Material 3 color scheme
    const seedColor = Color(0xFF6750A4);

    final dynamicTheme = ThemeData(
      colorScheme: ColorScheme.fromSeed(seedColor: seedColor),
      useMaterial3: true,
    );

    return MultiBlocProvider(
      providers: [
        BlocProvider<AttendanceBloc>(
          create: (_) =>
              getIt<AttendanceBloc>()
                ..add(const AttendanceEvent.getAllAttendance()),
        ),
      ],
      child: MaterialApp(
        title: 'TapTrack Attendance System',
        debugShowCheckedModeBanner: false,
        theme: dynamicTheme,
        darkTheme: ThemeData(
          brightness: Brightness.dark,
          colorScheme: ColorScheme.fromSeed(
            seedColor: seedColor,
            brightness: Brightness.dark,
          ),
          useMaterial3: true,
        ),
        themeMode: ThemeMode.system, // Automatically switches light/dark
        home: const HomePage(),
      ),
    );
  }
}
