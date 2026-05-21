import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gap/gap.dart';

import '../../../domain/exercise/exercise.dart';
import '../../router/app_router.dart';
import '../../settings/bloc/settings_bloc.dart';
import '../../settings/bloc/settings_event.dart';
import '../../theme/app_theme.dart';
import '../../workout/bloc/workout_bloc.dart';
import '../../workout/bloc/workout_event.dart';

/// Left-side card on the setup screen: title, timer slider, and start button.
class SettingsCard extends StatelessWidget {
  const SettingsCard({
    super.key,
    required this.duration,
    required this.exercises,
  });

  /// Current timer duration in seconds.
  final int duration;

  /// Exercise list used to start the workout.
  final List<Exercise> exercises;

  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).colorScheme;
    final ext = Theme.of(context).extension<AppThemeExtension>()!;

    return Container(
      padding: const EdgeInsets.all(40.0),
      decoration: BoxDecoration(
        color: colors.surface,
        borderRadius: BorderRadius.circular(ext.cardRadius),
        border: Border.all(color: colors.outline),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            'EXERCISE TIME',
            style: AppTextStyles.displayLarge(color: colors.onSurface),
          ),
          Text(
            'Freehand Home Workout Generator',
            style: TextStyle(fontSize: 18, color: colors.onSurfaceVariant),
          ),
          const Gap(40),
          Text(
            'TIMER SETTING',
            style: AppTextStyles.label(color: colors.onSurfaceVariant),
          ),
          const Gap(10),
          Row(
            children: [
              Text(
                '$duration seconds',
                style: AppTextStyles.headlineMedium(color: colors.onSurface),
              ),
              const Spacer(),
              ...[10, 15, 30, 45].map((preset) {
                final isSelected = duration == preset;
                return Padding(
                  padding: const EdgeInsets.only(left: 8.0),
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: isSelected
                          ? colors.onSurface
                          : colors.outlineVariant,
                      foregroundColor: isSelected
                          ? colors.surface
                          : colors.onSurfaceVariant,
                      side: BorderSide(
                        color: isSelected ? Colors.transparent : colors.outline,
                      ),
                    ),
                    onPressed: () {
                      context.read<SettingsBloc>().add(
                        SettingsEvent.updateDuration(preset),
                      );
                    },
                    child: Text('${preset}s'),
                  ),
                );
              }),
            ],
          ),
          Slider(
            value: duration.toDouble(),
            min: 5,
            max: 120,
            divisions: 23,
            onChanged: (value) {
              context.read<SettingsBloc>().add(
                SettingsEvent.updateDuration(value.toInt()),
              );
            },
          ),
          const Gap(40),
          SizedBox(
            width: double.infinity,
            height: 60,
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: colors.onSurface,
                foregroundColor: colors.surface,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(16),
                ),
              ),
              onPressed: () {
                context.read<WorkoutBloc>().add(
                  WorkoutEvent.startWorkout(
                    exercises: exercises,
                    durationSeconds: duration,
                  ),
                );
                const WorkoutRoute().go(context);
              },
              child: Text('START WORKOUT', style: AppTextStyles.button()),
            ),
          ),
        ],
      ),
    );
  }
}
