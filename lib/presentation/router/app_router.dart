import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import '../setup/setup_screen.dart';
import '../workout/workout_screen.dart';

part 'app_router.g.dart';

/// Type-safe route for the setup/home screen.
@TypedGoRoute<SetupRoute>(
  path: '/',
  routes: [TypedGoRoute<WorkoutRoute>(path: 'workout')],
)
@immutable
class SetupRoute extends GoRouteData with $SetupRoute {
  const SetupRoute();

  @override
  Widget build(BuildContext context, GoRouterState state) {
    return const SetupScreen();
  }
}

/// Type-safe route for the active workout screen.
@immutable
class WorkoutRoute extends GoRouteData with $WorkoutRoute {
  const WorkoutRoute();

  @override
  Widget build(BuildContext context, GoRouterState state) {
    return const WorkoutScreen();
  }
}

/// App-wide router configuration.
abstract final class AppRouter {
  static final GoRouter router = GoRouter(
    routes: $appRoutes,
    initialLocation: '/',
  );
}
