import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:exercise_time/domain/exercise/exercise.dart';

part 'workout_event.freezed.dart';

/// Events dispatched to [WorkoutBloc].
@freezed
abstract class WorkoutEvent with _$WorkoutEvent {
  const factory WorkoutEvent.startWorkout({
    required List<Exercise> exercises,
    required int durationSeconds,
  }) = StartWorkout;
  const factory WorkoutEvent.tick() = Tick;
  const factory WorkoutEvent.togglePause() = TogglePause;
  const factory WorkoutEvent.stopWorkout() = StopWorkout;
  const factory WorkoutEvent.nextExercise() = NextExercise;
  const factory WorkoutEvent.previousExercise() = PreviousExercise;
}
