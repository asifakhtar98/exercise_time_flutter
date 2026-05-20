import 'package:freezed_annotation/freezed_annotation.dart';
import '../../../../domain/exercise/exercise.dart';

part 'workout_event.freezed.dart';

@freezed
class WorkoutEvent with _$WorkoutEvent {
  const factory WorkoutEvent.startWorkout({
    required List<Exercise> exercises,
    required int durationSeconds,
  }) = StartWorkout;
  const factory WorkoutEvent.tick() = Tick;
  const factory WorkoutEvent.togglePause() = TogglePause;
  const factory WorkoutEvent.stopWorkout() = StopWorkout;
}
