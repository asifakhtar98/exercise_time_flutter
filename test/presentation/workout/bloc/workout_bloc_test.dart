import 'dart:async';

import 'package:bloc_test/bloc_test.dart';
import 'package:exercise_time/domain/audio/audio_service.dart';
import 'package:exercise_time/domain/exercise/exercise.dart';
import 'package:exercise_time/domain/services/timer_service.dart';
import 'package:exercise_time/presentation/workout/bloc/workout_bloc.dart';
import 'package:exercise_time/presentation/workout/bloc/workout_event.dart';
import 'package:exercise_time/presentation/workout/bloc/workout_state.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';

class MockAudioService extends Mock implements AudioService {}

class MockTimerService extends Mock implements TimerService {}

void main() {
  late MockAudioService mockAudio;
  late MockTimerService mockTimer;
  late StreamController<int> timerController;

  final testExercises = [
    const Exercise(
      id: 'ex1',
      name: 'Exercise 1',
      imagePath: 'assets/images/ex1.png',
      description: 'First exercise',
    ),
    const Exercise(
      id: 'ex2',
      name: 'Exercise 2',
      imagePath: 'assets/images/ex2.png',
      description: 'Second exercise',
    ),
  ];

  setUp(() {
    mockAudio = MockAudioService();
    mockTimer = MockTimerService();
    timerController = StreamController<int>.broadcast();

    when(() => mockTimer.tick()).thenAnswer((_) => timerController.stream);
    when(() => mockTimer.start()).thenReturn(null);
    when(() => mockTimer.stop()).thenReturn(null);
    when(() => mockAudio.playTransitionSound()).thenAnswer((_) async {});
  });

  tearDown(() {
    timerController.close();
  });

  group('WorkoutBloc', () {
    blocTest<WorkoutBloc, WorkoutState>(
      'emits [active] when StartWorkout is added',
      build: () => WorkoutBloc(mockAudio, mockTimer),
      act: (bloc) => bloc.add(
        WorkoutEvent.startWorkout(
          exercises: testExercises,
          durationSeconds: 10,
        ),
      ),
      expect: () => [
        WorkoutState.active(
          exercises: testExercises,
          currentExerciseIndex: 0,
          durationSeconds: 10,
          secondsRemaining: 10,
          isPaused: false,
        ),
      ],
      verify: (_) {
        verify(() => mockTimer.start()).called(1);
      },
    );

    blocTest<WorkoutBloc, WorkoutState>(
      'decrements secondsRemaining on Tick',
      build: () => WorkoutBloc(mockAudio, mockTimer),
      seed: () => WorkoutState.active(
        exercises: testExercises,
        currentExerciseIndex: 0,
        durationSeconds: 10,
        secondsRemaining: 5,
        isPaused: false,
      ),
      act: (bloc) => bloc.add(const WorkoutEvent.tick()),
      expect: () => [
        WorkoutState.active(
          exercises: testExercises,
          currentExerciseIndex: 0,
          durationSeconds: 10,
          secondsRemaining: 4,
          isPaused: false,
        ),
      ],
    );

    blocTest<WorkoutBloc, WorkoutState>(
      'advances exercise and plays sound when timer expires',
      build: () => WorkoutBloc(mockAudio, mockTimer),
      seed: () => WorkoutState.active(
        exercises: testExercises,
        currentExerciseIndex: 0,
        durationSeconds: 10,
        secondsRemaining: 1,
        isPaused: false,
      ),
      act: (bloc) => bloc.add(const WorkoutEvent.tick()),
      expect: () => [
        WorkoutState.active(
          exercises: testExercises,
          currentExerciseIndex: 1,
          durationSeconds: 10,
          secondsRemaining: 10,
          isPaused: false,
        ),
      ],
      verify: (_) {
        verify(() => mockAudio.playTransitionSound()).called(1);
      },
    );

    blocTest<WorkoutBloc, WorkoutState>(
      'wraps exercise index around when reaching the end',
      build: () => WorkoutBloc(mockAudio, mockTimer),
      seed: () => WorkoutState.active(
        exercises: testExercises,
        currentExerciseIndex: 1,
        durationSeconds: 10,
        secondsRemaining: 1,
        isPaused: false,
      ),
      act: (bloc) => bloc.add(const WorkoutEvent.tick()),
      expect: () => [
        WorkoutState.active(
          exercises: testExercises,
          currentExerciseIndex: 0,
          durationSeconds: 10,
          secondsRemaining: 10,
          isPaused: false,
        ),
      ],
    );

    blocTest<WorkoutBloc, WorkoutState>(
      'ignores Tick when paused',
      build: () => WorkoutBloc(mockAudio, mockTimer),
      seed: () => WorkoutState.active(
        exercises: testExercises,
        currentExerciseIndex: 0,
        durationSeconds: 10,
        secondsRemaining: 5,
        isPaused: true,
      ),
      act: (bloc) => bloc.add(const WorkoutEvent.tick()),
      expect: () => <WorkoutState>[],
    );

    blocTest<WorkoutBloc, WorkoutState>(
      'toggles pause state',
      build: () => WorkoutBloc(mockAudio, mockTimer),
      seed: () => WorkoutState.active(
        exercises: testExercises,
        currentExerciseIndex: 0,
        durationSeconds: 10,
        secondsRemaining: 5,
        isPaused: false,
      ),
      act: (bloc) => bloc.add(const WorkoutEvent.togglePause()),
      expect: () => [
        WorkoutState.active(
          exercises: testExercises,
          currentExerciseIndex: 0,
          durationSeconds: 10,
          secondsRemaining: 5,
          isPaused: true,
        ),
      ],
    );

    blocTest<WorkoutBloc, WorkoutState>(
      'emits initial state on StopWorkout',
      build: () => WorkoutBloc(mockAudio, mockTimer),
      seed: () => WorkoutState.active(
        exercises: testExercises,
        currentExerciseIndex: 0,
        durationSeconds: 10,
        secondsRemaining: 5,
        isPaused: false,
      ),
      act: (bloc) => bloc.add(const WorkoutEvent.stopWorkout()),
      expect: () => [const WorkoutState.initial()],
      verify: (_) {
        verify(() => mockTimer.stop()).called(greaterThanOrEqualTo(1));
      },
    );

    blocTest<WorkoutBloc, WorkoutState>(
      'advances to next exercise on NextExercise',
      build: () => WorkoutBloc(mockAudio, mockTimer),
      seed: () => WorkoutState.active(
        exercises: testExercises,
        currentExerciseIndex: 0,
        durationSeconds: 10,
        secondsRemaining: 5,
        isPaused: false,
      ),
      act: (bloc) => bloc.add(const WorkoutEvent.nextExercise()),
      expect: () => [
        WorkoutState.active(
          exercises: testExercises,
          currentExerciseIndex: 1,
          durationSeconds: 10,
          secondsRemaining: 10,
          isPaused: false,
        ),
      ],
    );

    blocTest<WorkoutBloc, WorkoutState>(
      'goes to previous exercise on PreviousExercise',
      build: () => WorkoutBloc(mockAudio, mockTimer),
      seed: () => WorkoutState.active(
        exercises: testExercises,
        currentExerciseIndex: 1,
        durationSeconds: 10,
        secondsRemaining: 5,
        isPaused: false,
      ),
      act: (bloc) => bloc.add(const WorkoutEvent.previousExercise()),
      expect: () => [
        WorkoutState.active(
          exercises: testExercises,
          currentExerciseIndex: 0,
          durationSeconds: 10,
          secondsRemaining: 10,
          isPaused: false,
        ),
      ],
    );

    blocTest<WorkoutBloc, WorkoutState>(
      'wraps to last exercise on PreviousExercise from index 0',
      build: () => WorkoutBloc(mockAudio, mockTimer),
      seed: () => WorkoutState.active(
        exercises: testExercises,
        currentExerciseIndex: 0,
        durationSeconds: 10,
        secondsRemaining: 5,
        isPaused: false,
      ),
      act: (bloc) => bloc.add(const WorkoutEvent.previousExercise()),
      expect: () => [
        WorkoutState.active(
          exercises: testExercises,
          currentExerciseIndex: 1,
          durationSeconds: 10,
          secondsRemaining: 10,
          isPaused: false,
        ),
      ],
    );
  });
}
