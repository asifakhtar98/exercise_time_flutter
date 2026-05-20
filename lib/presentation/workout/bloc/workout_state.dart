import 'package:freezed_annotation/freezed_annotation.dart';
import '../../../../domain/exercise/exercise.dart';

part 'workout_state.freezed.dart';

@freezed
class WorkoutState with _$WorkoutState {
  const factory WorkoutState.initial() = WorkoutInitial;
  const factory WorkoutState.active({
    required List<Exercise> exercises,
    required int currentExerciseIndex,
    required int durationSeconds,
    required int secondsRemaining,
    required bool isPaused,
  }) = WorkoutActive;
  const factory WorkoutState.finished() = WorkoutFinished;
}
