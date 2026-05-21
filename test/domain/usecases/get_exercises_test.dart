import 'package:exercise_time/domain/exercise/exercise.dart';
import 'package:exercise_time/domain/exercise/exercise_repository.dart';
import 'package:exercise_time/domain/usecases/get_exercises.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';

class MockExerciseRepository extends Mock implements ExerciseRepository {}

void main() {
  late MockExerciseRepository mockRepo;
  late GetExercises useCase;

  setUp(() {
    mockRepo = MockExerciseRepository();
    useCase = GetExercises(mockRepo);
  });

  test('delegates to ExerciseRepository.getExercises()', () {
    final exercises = [
      const Exercise(
        id: 'test',
        name: 'Test Exercise',
        imagePath: 'assets/test.png',
        description: 'A test exercise',
      ),
    ];
    when(() => mockRepo.getExercises()).thenReturn(exercises);

    final result = useCase();

    expect(result, equals(exercises));
    verify(() => mockRepo.getExercises()).called(1);
  });

  test('returns empty list when repository has no exercises', () {
    when(() => mockRepo.getExercises()).thenReturn([]);

    final result = useCase();

    expect(result, isEmpty);
  });
}
