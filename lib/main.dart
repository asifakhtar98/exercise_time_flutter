import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'injection.dart';
import 'presentation/router/app_router.dart';
import 'presentation/settings/bloc/settings_bloc.dart';
import 'presentation/settings/bloc/settings_event.dart';
import 'presentation/theme/app_theme.dart';
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
      child: MaterialApp.router(
        title: 'Exercise Time',
        debugShowCheckedModeBanner: false,
        theme: AppTheme.light,
        routerConfig: AppRouter.router,
      ),
    );
  }
}
