import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';

import '../../../domain/usecases/get_exercises.dart';
import 'exercise_list_event.dart';
import 'exercise_list_state.dart';

/// Manages the available exercise catalog.
///
/// Loads exercises via the [GetExercises] use case — widgets never
/// touch the service locator or repository directly.
@injectable
class ExerciseListBloc extends Bloc<ExerciseListEvent, ExerciseListState> {
  final GetExercises _getExercises;

  ExerciseListBloc(this._getExercises)
    : super(const ExerciseListState.initial()) {
    on<LoadExercises>(_onLoad);
  }

  void _onLoad(LoadExercises event, Emitter<ExerciseListState> emit) {
    final exercises = _getExercises();
    emit(ExerciseListState.loaded(exercises: exercises));
  }
}
