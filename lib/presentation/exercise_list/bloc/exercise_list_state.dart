import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../domain/exercise/exercise.dart';

part 'exercise_list_state.freezed.dart';

/// States for [ExerciseListBloc].
@freezed
abstract class ExerciseListState with _$ExerciseListState {
  /// No exercises loaded yet.
  const factory ExerciseListState.initial() = ExerciseListInitial;

  /// Exercises loaded successfully.
  const factory ExerciseListState.loaded({required List<Exercise> exercises}) =
      ExerciseListLoaded;
}
