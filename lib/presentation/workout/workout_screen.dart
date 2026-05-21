import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gap/gap.dart';

import '../router/app_router.dart';
import '../theme/app_theme.dart';
import 'bloc/workout_bloc.dart';
import 'bloc/workout_state.dart';
import 'widgets/active_workout_view.dart';

/// Active workout screen — landscape-only exercise timer.
///
/// Composes [ActiveWorkoutView] and handles navigation guards
/// (redirect to setup if no active workout, redirect on finish).
class WorkoutScreen extends StatelessWidget {
  const WorkoutScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: LayoutBuilder(
        builder: (context, constraints) {
          final isLandscape = constraints.maxWidth > constraints.maxHeight;

          if (!isLandscape) {
            return _buildRotatePrompt(context);
          }

          return _buildLandscapeLayout(context);
        },
      ),
    );
  }

  Widget _buildRotatePrompt(BuildContext context) {
    final colors = Theme.of(context).colorScheme;

    return Center(
      child: Padding(
        padding: const EdgeInsets.all(32.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              Icons.screen_rotation_rounded,
              size: 80,
              color: colors.onSurface,
            ),
            const Gap(24),
            Text(
              'LANDSCAPE MODE REQUIRED',
              style: AppTextStyles.headlineLarge(
                color: colors.onSurface,
                fontSize: 28,
              ),
              textAlign: TextAlign.center,
            ),
            const Gap(12),
            Text(
              'Please rotate your device to landscape orientation '
              'to continue your workout.',
              style: TextStyle(fontSize: 16, color: colors.onSurfaceVariant),
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildLandscapeLayout(BuildContext context) {
    return BlocConsumer<WorkoutBloc, WorkoutState>(
      listener: (context, state) {
        state.maybeWhen(
          finished: () => const SetupRoute().go(context),
          initial: () => const SetupRoute().go(context),
          orElse: () {},
        );
      },
      builder: (context, state) {
        return state.maybeWhen(
          active:
              (
                exercises,
                currentExerciseIndex,
                durationSeconds,
                secondsRemaining,
                isPaused,
              ) {
                final exercise = exercises[currentExerciseIndex];
                final progress = secondsRemaining / durationSeconds;

                return ActiveWorkoutView(
                  exerciseName: exercise.name,
                  exerciseId: exercise.id,
                  exerciseImagePath: exercise.imagePath,
                  exerciseDescription: exercise.description,
                  progress: progress,
                  secondsRemaining: secondsRemaining,
                  isPaused: isPaused,
                );
              },
          orElse: () => const Center(child: CircularProgressIndicator()),
        );
      },
    );
  }
}
