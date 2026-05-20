import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'injection.dart';
import 'presentation/screens/setup_screen.dart';
import 'presentation/settings/bloc/settings_bloc.dart';
import 'presentation/settings/bloc/settings_event.dart';
import 'presentation/workout/bloc/workout_bloc.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  configureDependencies();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<SettingsBloc>(
          create: (context) => getIt<SettingsBloc>()..add(const SettingsEvent.loadSettings()),
        ),
        BlocProvider<WorkoutBloc>(
          create: (context) => getIt<WorkoutBloc>(),
        ),
      ],
      child: MaterialApp(
        title: 'Exercise Time',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          useMaterial3: true,
          colorScheme: ColorScheme.fromSeed(
            seedColor: const Color(0xFFFFC107), // Amber Accent
            brightness: Brightness.dark,
          ),
          textTheme: GoogleFonts.interTextTheme(
            ThemeData.dark().textTheme,
          ),
        ),
        home: const SetupScreen(),
      ),
    );
  }
}
