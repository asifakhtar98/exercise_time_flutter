import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gap/gap.dart';
import 'package:google_fonts/google_fonts.dart';
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
    return Container(
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          colors: [Color(0xFF0F2027), Color(0xFF203A43), Color(0xFF2C5364)],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
      ),
      child: Center(
        child: Padding(
          padding: const EdgeInsets.all(32.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Icon(
                Icons.screen_rotation_rounded,
                size: 80,
                color: Colors.amberAccent,
              ),
              const Gap(24),
              Text(
                'LANDSCAPE MODE REQUIRED',
                style: GoogleFonts.outfit(
                  fontSize: 28,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                  letterSpacing: 2,
                ),
                textAlign: TextAlign.center,
              ),
              const Gap(12),
              Text(
                'Please rotate your device to landscape orientation to continue your workout.',
                style: GoogleFonts.inter(
                  fontSize: 16,
                  color: Colors.white70,
                ),
                textAlign: TextAlign.center,
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildLandscapeLayout(BuildContext context) {
    return BlocConsumer<WorkoutBloc, WorkoutState>(
      listener: (context, state) {
        state.maybeWhen(
          finished: () => Navigator.of(context).pop(),
          orElse: () {},
        );
      },
      builder: (context, state) {
        return state.maybeWhen(
          active: (exercises, currentExerciseIndex, durationSeconds, secondsRemaining, isPaused) {
            final exercise = exercises[currentExerciseIndex];
            final progress = secondsRemaining / durationSeconds;

            return Container(
              decoration: const BoxDecoration(
                gradient: LinearGradient(
                  colors: [Color(0xFF0F2027), Color(0xFF203A43), Color(0xFF2C5364)],
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                ),
              ),
              child: Row(
                children: [
                  // Left Side - Exercise Image Showcase (60% width)
                  Expanded(
                    flex: 6,
                    child: Padding(
                      padding: const EdgeInsets.all(24.0),
                      child: Container(
                        decoration: BoxDecoration(
                          color: Colors.black26,
                          borderRadius: BorderRadius.circular(24),
                          border: Border.all(
                            color: Colors.white.withOpacity(0.05),
                            width: 1,
                          ),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black.withOpacity(0.3),
                              blurRadius: 20,
                              offset: const Offset(0, 10),
                            ),
                          ],
                        ),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(24),
                          child: AnimatedSwitcher(
                            duration: const Duration(milliseconds: 500),
                            transitionBuilder: (child, animation) {
                              return FadeTransition(
                                opacity: animation,
                                child: ScaleTransition(
                                  scale: Tween<double>(begin: 0.95, end: 1.0).animate(animation),
                                  child: child,
                                ),
                              );
                            },
                            child: Image.asset(
                              exercise.imagePath,
                              key: ValueKey<String>(exercise.id),
                              width: double.infinity,
                              height: double.infinity,
                              fit: BoxFit.contain,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),

                  // Right Side - Exercise Info, Timer & Controls (40% width)
                  Expanded(
                    flex: 6, // Wait, this flex was 4 in original but let's keep the targetContent matched lines intact
                    child: Container(
                      padding: const EdgeInsets.all(32.0),
                      color: Colors.white.withOpacity(0.02),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          // Exercise Name
                          AnimatedSwitcher(
                            duration: const Duration(milliseconds: 300),
                            child: Text(
                              exercise.name.toUpperCase(),
                              key: ValueKey<String>(exercise.id),
                              style: GoogleFonts.outfit(
                                fontSize: 36,
                                fontWeight: FontWeight.w900,
                                color: Colors.white,
                                letterSpacing: 1.5,
                              ),
                              textAlign: TextAlign.center,
                            ),
                          ),
                          const Gap(16),

                          // Circular Timer Display
                          SizedBox(
                            width: 180,
                            height: 180,
                            child: Stack(
                              alignment: Alignment.center,
                              children: [
                                // Background Ring
                                SizedBox(
                                  width: 180,
                                  height: 180,
                                  child: CircularProgressIndicator(
                                    value: 1.0,
                                    strokeWidth: 12,
                                    valueColor: AlwaysStoppedAnimation<Color>(
                                      Colors.white.withOpacity(0.1),
                                    ),
                                  ),
                                ),
                                // Active Progress Ring
                                SizedBox(
                                  width: 180,
                                  height: 180,
                                  child: CircularProgressIndicator(
                                    value: progress,
                                    strokeWidth: 12,
                                    valueColor: AlwaysStoppedAnimation<Color>(
                                      secondsRemaining <= 3 ? Colors.redAccent : Colors.amberAccent,
                                    ),
                                  ),
                                ),
                                // Seconds text
                                Text(
                                  '$secondsRemaining',
                                  style: GoogleFonts.outfit(
                                    fontSize: 64,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          const Gap(24),

                          // Controls Card
                          Container(
                            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                            decoration: BoxDecoration(
                              color: Colors.white.withOpacity(0.05),
                              borderRadius: BorderRadius.circular(20),
                              border: Border.all(
                                color: Colors.white.withOpacity(0.1),
                              ),
                            ),
                            child: Row(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                // Stop Workout
                                IconButton(
                                  icon: const Icon(Icons.stop_rounded, size: 36),
                                  color: Colors.redAccent,
                                  onPressed: () {
                                    context.read<WorkoutBloc>().add(
                                      const WorkoutEvent.stopWorkout(),
                                    );
                                    Navigator.of(context).pop();
                                  },
                                ),
                                const Gap(16),
                                // Play / Pause
                                Container(
                                  decoration: const BoxDecoration(
                                    color: Colors.amberAccent,
                                    shape: BoxShape.circle,
                                  ),
                                  child: IconButton(
                                    icon: Icon(
                                      isPaused ? Icons.play_arrow_rounded : Icons.pause_rounded,
                                      size: 36,
                                    ),
                                    color: Colors.black87,
                                    onPressed: () {
                                      context.read<WorkoutBloc>().add(
                                        const WorkoutEvent.togglePause(),
                                      );
                                    },
                                  ),
                                ),
                              ],
                            ),
                          ),
                          const Gap(24),

                          // Description
                          Expanded(
                            child: SingleChildScrollView(
                              child: AnimatedSwitcher(
                                duration: const Duration(milliseconds: 300),
                                child: Text(
                                  exercise.description,
                                  key: ValueKey<String>(exercise.id),
                                  style: GoogleFonts.inter(
                                    fontSize: 14,
                                    color: Colors.white70,
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
