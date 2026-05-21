import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gap/gap.dart';
import '../router/app_router.dart';
import '../theme/app_theme.dart';
import '../workout/bloc/workout_bloc.dart';
import '../workout/bloc/workout_event.dart';
import '../workout/bloc/workout_state.dart';

class WorkoutScreen extends StatelessWidget {
  const WorkoutScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: OrientationBuilder(
        builder: (context, orientation) {
          // Fallback check for landscape orientation
          final mediaQuery = MediaQuery.of(context);
          final isLandscape = mediaQuery.size.width > mediaQuery.size.height;

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
          orElse: () {},
        );
      },
      builder: (context, state) {
        return state.maybeWhen(
          active: (exercises, currentExerciseIndex, durationSeconds,
              secondsRemaining, isPaused) {
            final exercise = exercises[currentExerciseIndex];
            final progress = secondsRemaining / durationSeconds;

            return _ActiveWorkoutView(
              exerciseName: exercise.name,
              exerciseId: exercise.id,
              exerciseImagePath: exercise.imagePath,
              exerciseDescription: exercise.description,
              progress: progress,
              secondsRemaining: secondsRemaining,
              isPaused: isPaused,
            );
          },
          orElse: () => const Scaffold(
            body: Center(child: CircularProgressIndicator()),
          ),
        );
      },
    );
  }
}

class _ActiveWorkoutView extends StatelessWidget {
  const _ActiveWorkoutView({
    required this.exerciseName,
    required this.exerciseId,
    required this.exerciseImagePath,
    required this.exerciseDescription,
    required this.progress,
    required this.secondsRemaining,
    required this.isPaused,
  });

  final String exerciseName;
  final String exerciseId;
  final String exerciseImagePath;
  final String exerciseDescription;
  final double progress;
  final int secondsRemaining;
  final bool isPaused;

  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).colorScheme;
    final ext = Theme.of(context).extension<AppThemeExtension>()!;

    return Row(
      children: [
        // Left Side - Exercise Image
        Expanded(
          flex: 6,
          child: Padding(
            padding: const EdgeInsets.all(24.0),
            child: Container(
              decoration: BoxDecoration(
                color: colors.outlineVariant,
                borderRadius: BorderRadius.circular(ext.cardRadius),
                border: Border.all(color: colors.outline),
              ),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(ext.cardRadius),
                child: AnimatedSwitcher(
                  duration: const Duration(milliseconds: 500),
                  transitionBuilder: (child, animation) {
                    return FadeTransition(
                      opacity: animation,
                      child: ScaleTransition(
                        scale: Tween<double>(begin: 0.95, end: 1.0)
                            .animate(animation),
                        child: child,
                      ),
                    );
                  },
                  child: Image.asset(
                    exerciseImagePath,
                    key: ValueKey<String>(exerciseId),
                    width: double.infinity,
                    height: double.infinity,
                    fit: BoxFit.contain,
                  ),
                ),
              ),
            ),
          ),
        ),

        // Right Side - Info, Timer & Controls
        Expanded(
          flex: 6,
          child: Padding(
            padding: const EdgeInsets.all(32.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                // Exercise Name
                AnimatedSwitcher(
                  duration: const Duration(milliseconds: 300),
                  child: Text(
                    exerciseName.toUpperCase(),
                    key: ValueKey<String>(exerciseId),
                    style: AppTextStyles.headlineLarge(
                      color: colors.onSurface,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
                const Gap(16),

                // Circular Timer
                _TimerRing(
                  progress: progress,
                  secondsRemaining: secondsRemaining,
                ),
                const Gap(24),

                // Controls
                _PlaybackControls(isPaused: isPaused),
                const Gap(24),

                // Description
                Expanded(
                  child: SingleChildScrollView(
                    child: AnimatedSwitcher(
                      duration: const Duration(milliseconds: 300),
                      child: Text(
                        exerciseDescription,
                        key: ValueKey<String>(exerciseId),
                        style: TextStyle(
                          fontSize: 14,
                          color: colors.onSurfaceVariant,
                          height: 1.5,
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}

class _TimerRing extends StatelessWidget {
  const _TimerRing({
    required this.progress,
    required this.secondsRemaining,
  });

  final double progress;
  final int secondsRemaining;

  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).colorScheme;
    final ext = Theme.of(context).extension<AppThemeExtension>()!;
    final isWarning = secondsRemaining <= 3;

    return SizedBox(
      width: 180,
      height: 180,
      child: Stack(
        alignment: Alignment.center,
        children: [
          // Background ring
          SizedBox(
            width: 180,
            height: 180,
            child: CircularProgressIndicator(
              value: 1.0,
              strokeWidth: 12,
              valueColor: AlwaysStoppedAnimation<Color>(colors.outline),
            ),
          ),
          // Active progress ring
          SizedBox(
            width: 180,
            height: 180,
            child: CircularProgressIndicator(
              value: progress,
              strokeWidth: 12,
              valueColor: AlwaysStoppedAnimation<Color>(
                isWarning ? ext.timerWarning : colors.onSurface,
              ),
            ),
          ),
          // Seconds text
          Text(
            '$secondsRemaining',
            style: AppTextStyles.timerDisplay(
              color: isWarning ? ext.timerWarning : colors.onSurface,
            ),
          ),
        ],
      ),
    );
  }
}

class _PlaybackControls extends StatelessWidget {
  const _PlaybackControls({required this.isPaused});

  final bool isPaused;

  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).colorScheme;
    final ext = Theme.of(context).extension<AppThemeExtension>()!;

    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      decoration: BoxDecoration(
        color: colors.outlineVariant,
        borderRadius: BorderRadius.circular(ext.controlsRadius),
        border: Border.all(color: colors.outline),
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          // Previous Exercise
          IconButton(
            icon: const Icon(Icons.skip_previous_rounded, size: 36),
            onPressed: () {
              context.read<WorkoutBloc>().add(
                    const WorkoutEvent.previousExercise(),
                  );
            },
          ),
          const Gap(12),
          // Stop Workout
          IconButton(
            icon: const Icon(Icons.stop_rounded, size: 36),
            color: colors.error,
            onPressed: () {
              context.read<WorkoutBloc>().add(
                    const WorkoutEvent.stopWorkout(),
                  );
              const SetupRoute().go(context);
            },
          ),
          const Gap(12),
          // Play / Pause
          Container(
            decoration: BoxDecoration(
              color: colors.onSurface,
              shape: BoxShape.circle,
            ),
            child: IconButton(
              icon: Icon(
                isPaused ? Icons.play_arrow_rounded : Icons.pause_rounded,
                size: 36,
              ),
              color: colors.surface,
              onPressed: () {
                context.read<WorkoutBloc>().add(
                      const WorkoutEvent.togglePause(),
                    );
              },
            ),
          ),
          const Gap(12),
          // Next Exercise
          IconButton(
            icon: const Icon(Icons.skip_next_rounded, size: 36),
            onPressed: () {
              context.read<WorkoutBloc>().add(
                    const WorkoutEvent.nextExercise(),
                  );
            },
          ),
        ],
      ),
    );
  }
}
