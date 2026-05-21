import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import '../../theme/app_theme.dart';
import 'playback_controls.dart';
import 'timer_ring.dart';

/// Displays the active workout: exercise image, name, timer, controls,
/// and description in a landscape two-column layout.
class ActiveWorkoutView extends StatelessWidget {
  const ActiveWorkoutView({
    super.key,
    required this.exerciseName,
    required this.exerciseId,
    required this.exerciseImagePath,
    required this.exerciseDescription,
    required this.progress,
    required this.secondsRemaining,
    required this.isPaused,
  });

  /// Display name of the current exercise.
  final String exerciseName;

  /// Unique identifier — used as [ValueKey] for animated transitions.
  final String exerciseId;

  /// Asset path to the exercise illustration.
  final String exerciseImagePath;

  /// Instructional text for the exercise.
  final String exerciseDescription;

  /// Timer progress from 1.0 (full) to 0.0 (expired).
  final double progress;

  /// Seconds left on the current interval.
  final int secondsRemaining;

  /// Whether the workout is currently paused.
  final bool isPaused;

  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).colorScheme;
    final ext = Theme.of(context).extension<AppThemeExtension>()!;

    return Row(
      children: [
        // Left Side — Exercise Image
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
                        scale: Tween<double>(
                          begin: 0.95,
                          end: 1.0,
                        ).animate(animation),
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

        // Right Side — Info, Timer & Controls
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
                    style: AppTextStyles.headlineLarge(color: colors.onSurface),
                    textAlign: TextAlign.center,
                  ),
                ),
                const Gap(16),

                // Circular Timer
                TimerRing(
                  progress: progress,
                  secondsRemaining: secondsRemaining,
                ),
                const Gap(24),

                // Controls
                PlaybackControls(isPaused: isPaused),
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
