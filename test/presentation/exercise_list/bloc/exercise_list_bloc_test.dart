import 'package:bloc_test/bloc_test.dart';
import 'package:exercise_time/domain/exercise/exercise.dart';
import 'package:exercise_time/domain/usecases/get_exercises.dart';
import 'package:exercise_time/presentation/exercise_list/bloc/exercise_list_bloc.dart';
import 'package:exercise_time/presentation/exercise_list/bloc/exercise_list_event.dart';
import 'package:exercise_time/presentation/exercise_list/bloc/exercise_list_state.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';

class MockGetExercises extends Mock implements GetExercises {}

void main() {
  late MockGetExercises mockGetExercises;

  final testExercises = [
    const Exercise(
      id: 'jumping_jacks',
      name: 'Jumping Jacks',
      imagePath: 'assets/images/jumping_jacks.png',
      description: 'Jump with arms and legs spread.',
    ),
    const Exercise(
      id: 'burpees',
      name: 'Burpees',
      imagePath: 'assets/images/burpees.png',
      description: 'Full body exercise.',
    ),
  ];

  setUp(() {
    mockGetExercises = MockGetExercises();
  });

  group('ExerciseListBloc', () {
    blocTest<ExerciseListBloc, ExerciseListState>(
      'emits [loaded] when LoadExercises is added',
      build: () {
        when(() => mockGetExercises()).thenReturn(testExercises);
        return ExerciseListBloc(mockGetExercises);
      },
      act: (bloc) => bloc.add(const ExerciseListEvent.load()),
      expect: () => [ExerciseListState.loaded(exercises: testExercises)],
      verify: (_) {
        verify(() => mockGetExercises()).called(1);
      },
    );

    blocTest<ExerciseListBloc, ExerciseListState>(
      'initial state is ExerciseListInitial',
      build: () {
        when(() => mockGetExercises()).thenReturn([]);
        return ExerciseListBloc(mockGetExercises);
      },
      verify: (bloc) {
        expect(bloc.state, const ExerciseListState.initial());
      },
    );
  });
}
