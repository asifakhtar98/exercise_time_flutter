import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gap/gap.dart';
import 'package:google_fonts/google_fonts.dart';
import '../../domain/exercise/exercise_repository.dart';
import '../../injection.dart';
import '../settings/bloc/settings_bloc.dart';
import '../settings/bloc/settings_event.dart';
import '../settings/bloc/settings_state.dart';
import '../workout/bloc/workout_bloc.dart';
import '../workout/bloc/workout_event.dart';
import 'workout_screen.dart';

class SetupScreen extends StatelessWidget {
  const SetupScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final exerciseRepository = getIt<ExerciseRepository>();
    final exercises = exerciseRepository.getExercises();

    return BlocBuilder<SettingsBloc, SettingsState>(
      builder: (context, state) {
        return state.maybeWhen(
          loaded: (settings) {
            final duration = settings.durationSeconds;
            return Scaffold(
              body: Container(
                decoration: const BoxDecoration(
                  gradient: LinearGradient(
                    colors: [Color(0xFF0F2027), Color(0xFF203A43), Color(0xFF2C5364)],
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                  ),
                ),
                child: Center(
                  child: SingleChildScrollView(
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 40.0, vertical: 20.0),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          // Left Section - App Intro & Customization
                          Expanded(
                            flex: 5,
                            child: Card(
                              elevation: 20,
                              shadowColor: Colors.black54,
                              color: Colors.white.withOpacity(0.08),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(24),
                                side: BorderSide(color: Colors.white.withOpacity(0.15), width: 1),
                              ),
                              child: Padding(
                                padding: const EdgeInsets.all(40.0),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisSize: MainAxisSize.min,
                                  children: [
                                    Text(
                                      'EXERCISE TIME',
                                      style: GoogleFonts.outfit(
                                        fontSize: 48,
                                        fontWeight: FontWeight.w900,
                                        color: Colors.white,
                                        letterSpacing: 2,
                                      ),
                                    ),
                                    Text(
                                      'Freehand Home Workout Generator',
                                      style: GoogleFonts.inter(
                                        fontSize: 18,
                                        color: Colors.white70,
                                      ),
                                    ),
                                    const Gap(40),
                                    Text(
                                      'TIMER SETTING',
                                      style: GoogleFonts.inter(
                                        fontSize: 14,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.amberAccent,
                                        letterSpacing: 1.5,
                                      ),
                                    ),
                                    const Gap(10),
                                    Row(
                                      children: [
                                        Text(
                                          '$duration seconds',
                                          style: GoogleFonts.outfit(
                                            fontSize: 32,
                                            fontWeight: FontWeight.bold,
                                            color: Colors.white,
                                          ),
                                        ),
                                        const Spacer(),
                                        // Quick Presets
                                        ...[10, 15, 30, 45].map((preset) {
                                          final isSelected = duration == preset;
                                          return Padding(
                                            padding: const EdgeInsets.only(left: 8.0),
                                            child: ElevatedButton(
                                              style: ElevatedButton.styleFrom(
                                                backgroundColor: isSelected
                                                    ? Colors.amberAccent
                                                    : Colors.white.withOpacity(0.1),
                                                foregroundColor: isSelected ? Colors.black87 : Colors.white,
                                                elevation: isSelected ? 8 : 0,
                                                shape: RoundedRectangleBorder(
                                                  borderRadius: BorderRadius.circular(12),
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
                                      activeColor: Colors.amberAccent,
                                      inactiveColor: Colors.white24,
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
                                          backgroundColor: Colors.amberAccent,
                                          foregroundColor: Colors.black87,
                                          shape: RoundedRectangleBorder(
                                            borderRadius: BorderRadius.circular(16),
                                          ),
                                          elevation: 12,
                                          shadowColor: Colors.amberAccent.withOpacity(0.4),
                                        ),
                                        onPressed: () {
                                          context.read<WorkoutBloc>().add(
                                            WorkoutEvent.startWorkout(
                                              exercises: exercises,
                                              durationSeconds: duration,
                                            ),
                                          );
                                          Navigator.of(context).push(
                                            MaterialPageRoute(
                                              builder: (_) => const WorkoutScreen(),
                                            ),
                                          );
                                        },
                                        child: Text(
                                          'START WORKOUT',
                                          style: GoogleFonts.outfit(
                                            fontSize: 20,
                                            fontWeight: FontWeight.bold,
                                            letterSpacing: 1.5,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                          const Gap(40),
                          // Right Section - Exercise Routine Preview
                          Expanded(
                            flex: 4,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(left: 8.0, bottom: 12),
                                  child: Text(
                                    'WORKOUT ROUTINE',
                                    style: GoogleFonts.inter(
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white70,
                                      letterSpacing: 1.5,
                                    ),
                                  ),
                                ),
                                ...exercises.map((exercise) {
                                  return Card(
                                    margin: const EdgeInsets.only(bottom: 12),
                                    color: Colors.white.withOpacity(0.04),
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(16),
                                      side: BorderSide(color: Colors.white.withOpacity(0.05)),
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
                                        style: GoogleFonts.outfit(
                                          color: Colors.white,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                      subtitle: Text(
                                        exercise.description,
                                        maxLines: 1,
                                        overflow: TextOverflow.ellipsis,
                                        style: GoogleFonts.inter(
                                          color: Colors.white60,
                                          fontSize: 12,
                                        ),
                                      ),
                                    ),
                                  );
                                }),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            );
          },
          orElse: () => const Scaffold(
            body: Center(
              child: CircularProgressIndicator(color: Colors.amberAccent),
            ),
          ),
        );
      },
    );
  }
}
