import 'dart:async';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';
import '../../../../domain/audio/audio_service.dart';
import 'workout_event.dart';
import 'workout_state.dart';

@injectable
class WorkoutBloc extends Bloc<WorkoutEvent, WorkoutState> {
  final AudioService _audioService;
  StreamSubscription<int>? _timerSubscription;

  WorkoutBloc(this._audioService) : super(const WorkoutState.initial()) {
    on<StartWorkout>((event, emit) {
      _timerSubscription?.cancel();
      emit(WorkoutState.active(
        exercises: event.exercises,
        currentExerciseIndex: 0,
        durationSeconds: event.durationSeconds,
        secondsRemaining: event.durationSeconds,
        isPaused: false,
      ));

      _startTimer();
    });

    on<Tick>((event, emit) {
      final currentState = state;
      if (currentState is WorkoutActive) {
        if (currentState.isPaused) return;

        if (currentState.secondsRemaining <= 1) {
          // Play transition beep
          _audioService.playTransitionSound();

          // Move to next exercise (wrap around for infinite loop)
          final nextIndex = (currentState.currentExerciseIndex + 1) % currentState.exercises.length;
          emit(currentState.copyWith(
            currentExerciseIndex: nextIndex,
            secondsRemaining: currentState.durationSeconds,
          ));
        } else {
          emit(currentState.copyWith(
            secondsRemaining: currentState.secondsRemaining - 1,
          ));
        }
      }
    });

    on<TogglePause>((event, emit) {
      final currentState = state;
      if (currentState is WorkoutActive) {
        emit(currentState.copyWith(isPaused: !currentState.isPaused));
      }
    });

    on<StopWorkout>((event, emit) {
      _timerSubscription?.cancel();
      emit(const WorkoutState.initial());
    });

    on<NextExercise>((event, emit) {
      final currentState = state;
      if (currentState is WorkoutActive) {
        final nextIndex = (currentState.currentExerciseIndex + 1) % currentState.exercises.length;
        emit(currentState.copyWith(
          currentExerciseIndex: nextIndex,
          secondsRemaining: currentState.durationSeconds,
        ));
      }
    });

    on<PreviousExercise>((event, emit) {
      final currentState = state;
      if (currentState is WorkoutActive) {
        final prevIndex = (currentState.currentExerciseIndex - 1 + currentState.exercises.length) %
            currentState.exercises.length;
        emit(currentState.copyWith(
          currentExerciseIndex: prevIndex,
          secondsRemaining: currentState.durationSeconds,
        ));
      }
    });
  }

  void _startTimer() {
    _timerSubscription = Stream.periodic(const Duration(seconds: 1), (x) => x).listen((_) {
      add(const WorkoutEvent.tick());
    });
  }

  @override
  Future<void> close() {
    _timerSubscription?.cancel();
    return super.close();
  }
}
