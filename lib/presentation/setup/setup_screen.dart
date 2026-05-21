import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gap/gap.dart';

import '../exercise_list/bloc/exercise_list_bloc.dart';
import '../exercise_list/bloc/exercise_list_state.dart';
import '../settings/bloc/settings_bloc.dart';
import '../settings/bloc/settings_state.dart';
import 'widgets/exercise_list_panel.dart';
import 'widgets/settings_card.dart';

/// Home screen — timer configuration and exercise preview.
///
/// Composes [SettingsCard] and [ExerciseListPanel] widgets. All data
/// flows through Blocs; no direct service-locator access.
class SetupScreen extends StatelessWidget {
  const SetupScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ExerciseListBloc, ExerciseListState>(
      builder: (context, exerciseState) {
        return exerciseState.maybeWhen(
          loaded: (exercises) {
            return BlocBuilder<SettingsBloc, SettingsState>(
              builder: (context, settingsState) {
                return settingsState.maybeWhen(
                  loaded: (settings) {
                    return Scaffold(
                      body: SafeArea(
                        child: Padding(
                          padding: const EdgeInsets.symmetric(
                            horizontal: 40.0,
                            vertical: 20.0,
                          ),
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.stretch,
                            children: [
                              // Left Section — Settings & Start
                              Expanded(
                                flex: 5,
                                child: Center(
                                  child: SettingsCard(
                                    duration: settings.durationSeconds,
                                    exercises: exercises,
                                  ),
                                ),
                              ),
                              const Gap(40),
                              // Right Section — Exercise Routine
                              Expanded(
                                flex: 4,
                                child: ExerciseListPanel(
                                  exercises: exercises,
                                ),
                              ),
                            ],
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
          },
          orElse: () =>
              const Scaffold(body: Center(child: CircularProgressIndicator())),
        );
      },
    );
  }
}
