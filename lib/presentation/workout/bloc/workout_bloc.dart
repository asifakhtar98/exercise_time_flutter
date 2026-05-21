import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';

import '../../../domain/audio/audio_service.dart';
import '../../../domain/services/timer_service.dart';
import 'workout_event.dart';
import 'workout_state.dart';

/// Orchestrates an active workout session.
///
/// Delegates timer ticking to [TimerService] (SRP) and uses
/// [AudioService] for transition sounds. Contains zero knowledge
/// of *how* timing or audio works — only *when* to invoke them.
@injectable
class WorkoutBloc extends Bloc<WorkoutEvent, WorkoutState> {
  final AudioService _audioService;
  final TimerService _timerService;
  StreamSubscription<int>? _timerSubscription;

  WorkoutBloc(this._audioService, this._timerService)
    : super(const WorkoutState.initial()) {
    on<StartWorkout>(_onStart);
    on<Tick>(_onTick);
    on<TogglePause>(_onTogglePause);
    on<StopWorkout>(_onStop);
    on<NextExercise>(_onNext);
    on<PreviousExercise>(_onPrevious);
  }

  void _onStart(StartWorkout event, Emitter<WorkoutState> emit) {
    _stopTimer();
    emit(
      WorkoutState.active(
        exercises: event.exercises,
        currentExerciseIndex: 0,
        durationSeconds: event.durationSeconds,
        secondsRemaining: event.durationSeconds,
        isPaused: false,
      ),
    );
    _startTimer();
  }

  void _onTick(Tick event, Emitter<WorkoutState> emit) {
    final currentState = state;
    if (currentState is! WorkoutActive || currentState.isPaused) return;

    if (currentState.secondsRemaining <= 1) {
      _audioService.playTransitionSound();
      final nextIndex =
          (currentState.currentExerciseIndex + 1) %
          currentState.exercises.length;
      emit(
        currentState.copyWith(
          currentExerciseIndex: nextIndex,
          secondsRemaining: currentState.durationSeconds,
        ),
      );
    } else {
      emit(
        currentState.copyWith(
          secondsRemaining: currentState.secondsRemaining - 1,
        ),
      );
    }
  }

  void _onTogglePause(TogglePause event, Emitter<WorkoutState> emit) {
    final currentState = state;
    if (currentState is WorkoutActive) {
      emit(currentState.copyWith(isPaused: !currentState.isPaused));
    }
  }

  void _onStop(StopWorkout event, Emitter<WorkoutState> emit) {
    _stopTimer();
    emit(const WorkoutState.initial());
  }

  void _onNext(NextExercise event, Emitter<WorkoutState> emit) {
    final currentState = state;
    if (currentState is WorkoutActive) {
      final nextIndex =
          (currentState.currentExerciseIndex + 1) %
          currentState.exercises.length;
      emit(
        currentState.copyWith(
          currentExerciseIndex: nextIndex,
          secondsRemaining: currentState.durationSeconds,
        ),
      );
    }
  }

  void _onPrevious(PreviousExercise event, Emitter<WorkoutState> emit) {
    final currentState = state;
    if (currentState is WorkoutActive) {
      final prevIndex =
          (currentState.currentExerciseIndex -
              1 +
              currentState.exercises.length) %
          currentState.exercises.length;
      emit(
        currentState.copyWith(
          currentExerciseIndex: prevIndex,
          secondsRemaining: currentState.durationSeconds,
        ),
      );
    }
  }

  void _startTimer() {
    _timerService.start();
    _timerSubscription = _timerService.tick().listen((_) {
      add(const WorkoutEvent.tick());
    });
  }

  void _stopTimer() {
    _timerSubscription?.cancel();
    _timerSubscription = null;
    _timerService.stop();
  }

  @override
  Future<void> close() {
    _stopTimer();
    return super.close();
  }
}
