import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gap/gap.dart';
import '../../domain/exercise/exercise.dart';
import '../../domain/exercise/exercise_repository.dart';
import '../../injection.dart';
import '../router/app_router.dart';
import '../settings/bloc/settings_bloc.dart';
import '../settings/bloc/settings_event.dart';
import '../settings/bloc/settings_state.dart';
import '../theme/app_theme.dart';
import '../workout/bloc/workout_bloc.dart';
import '../workout/bloc/workout_event.dart';

class SetupScreen extends StatelessWidget {
  const SetupScreen({super.key});

  static final List<Exercise> _exercises =
      getIt<ExerciseRepository>().getExercises();

  @override
  Widget build(BuildContext context) {
    final exercises = _exercises;

    return BlocBuilder<SettingsBloc, SettingsState>(
      builder: (context, state) {
        return state.maybeWhen(
          loaded: (settings) {
            final duration = settings.durationSeconds;
            return Scaffold(
              body: Center(
                child: SingleChildScrollView(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 40.0,
                      vertical: 20.0,
                    ),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        // Left Section - App Intro & Customization
                        Expanded(
                          flex: 5,
                          child: _SettingsCard(
                            duration: duration,
                            exercises: exercises,
                          ),
                        ),
                        const Gap(40),
                        // Right Section - Exercise Routine Preview
                        Expanded(
                          flex: 4,
                          child: _ExerciseList(exercises: exercises),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
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

class _SettingsCard extends StatelessWidget {
  const _SettingsCard({
    required this.duration,
    required this.exercises,
  });

  final int duration;
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
                        color: isSelected
                            ? Colors.transparent
                            : colors.outline,
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
              child: Text(
                'START WORKOUT',
                style: AppTextStyles.button(),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class _ExerciseList extends StatelessWidget {
  const _ExerciseList({required this.exercises});

  final List<Exercise> exercises;

  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).colorScheme;
    final ext = Theme.of(context).extension<AppThemeExtension>()!;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 8.0, bottom: 12),
          child: Text(
            'WORKOUT ROUTINE',
            style: AppTextStyles.label(color: colors.onSurfaceVariant),
          ),
        ),
        ...exercises.map((exercise) {
          return Container(
            margin: const EdgeInsets.only(bottom: 8),
            decoration: BoxDecoration(
              color: colors.surface,
              borderRadius: BorderRadius.circular(ext.cardRadius * 0.67),
              border: Border.all(color: colors.outline),
            ),
            child: ListTile(
              contentPadding: const EdgeInsets.all(12),
              leading: ClipRRect(
                borderRadius: BorderRadius.circular(12),
                child: Image.asset(
                  exercise.imagePath,
                  width: 50,
                  height: 50,
                  fit: BoxFit.cover,
                ),
              ),
              title: Text(
                exercise.name,
                style: AppTextStyles.labelBold(color: colors.onSurface),
              ),
              subtitle: Text(
                exercise.description,
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
                style: TextStyle(
                  color: colors.onSurfaceVariant,
                  fontSize: 12,
                ),
              ),
            ),
          );
        }),
      ],
    );
  }
}
