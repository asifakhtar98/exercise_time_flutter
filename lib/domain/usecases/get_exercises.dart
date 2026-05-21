import 'package:injectable/injectable.dart';

import '../exercise/exercise.dart';
import '../exercise/exercise_repository.dart';

/// Retrieves the full list of available exercises.
///
/// Single-responsibility use case that isolates the Bloc from the
/// repository contract, enforcing the Dependency Inversion Principle.
@injectable
class GetExercises {
  final ExerciseRepository _repository;

  const GetExercises(this._repository);

  /// Returns all exercises known to the app.
  List<Exercise> call() => _repository.getExercises();
}
