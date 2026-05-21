import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gap/gap.dart';

import '../../theme/app_theme.dart';
import '../bloc/workout_bloc.dart';
import '../bloc/workout_event.dart';
import '../../router/app_router.dart';

/// Previous / Stop / Play-Pause / Next control bar.
///
/// Dispatches [WorkoutEvent]s to [WorkoutBloc]. Navigation (stop → setup)
/// is handled here because it's a presentation concern.
class PlaybackControls extends StatelessWidget {
  const PlaybackControls({super.key, required this.isPaused});

  /// Whether the workout is currently paused.
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
              context.read<WorkoutBloc>().add(const WorkoutEvent.stopWorkout());
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
