import 'package:freezed_annotation/freezed_annotation.dart';

part 'exercise_list_event.freezed.dart';

/// Events for [ExerciseListBloc].
@freezed
abstract class ExerciseListEvent with _$ExerciseListEvent {
  /// Request to load the exercise catalog.
  const factory ExerciseListEvent.load() = LoadExercises;
}
