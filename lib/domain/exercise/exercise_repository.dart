import '../exercise/exercise.dart';

/// Contract for accessing the exercise catalog.
///
/// Implementations decide *where* exercises come from (hardcoded list,
/// local database, remote API, etc.). Consumers depend only on this
/// abstraction to satisfy the Dependency Inversion Principle.
abstract class ExerciseRepository {
  /// Returns all available exercises in display order.
  List<Exercise> getExercises();
}
