// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'workout_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

/// @nodoc
mixin _$WorkoutEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<Exercise> exercises, int durationSeconds)
    startWorkout,
    required TResult Function() tick,
    required TResult Function() togglePause,
    required TResult Function() stopWorkout,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<Exercise> exercises, int durationSeconds)?
    startWorkout,
    TResult? Function()? tick,
    TResult? Function()? togglePause,
    TResult? Function()? stopWorkout,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<Exercise> exercises, int durationSeconds)?
    startWorkout,
    TResult Function()? tick,
    TResult Function()? togglePause,
    TResult Function()? stopWorkout,
    required TResult orElse(),
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(StartWorkout value) startWorkout,
    required TResult Function(Tick value) tick,
    required TResult Function(TogglePause value) togglePause,
    required TResult Function(StopWorkout value) stopWorkout,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(StartWorkout value)? startWorkout,
    TResult? Function(Tick value)? tick,
    TResult? Function(TogglePause value)? togglePause,
    TResult? Function(StopWorkout value)? stopWorkout,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(StartWorkout value)? startWorkout,
    TResult Function(Tick value)? tick,
    TResult Function(TogglePause value)? togglePause,
    TResult Function(StopWorkout value)? stopWorkout,
    required TResult orElse(),
  }) => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WorkoutEventCopyWith<$Res> {
  factory $WorkoutEventCopyWith(
    WorkoutEvent value,
    $Res Function(WorkoutEvent) then,
  ) = _$WorkoutEventCopyWithImpl<$Res, WorkoutEvent>;
}

/// @nodoc
class _$WorkoutEventCopyWithImpl<$Res, $Val extends WorkoutEvent>
    implements $WorkoutEventCopyWith<$Res> {
  _$WorkoutEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of WorkoutEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$StartWorkoutImplCopyWith<$Res> {
  factory _$$StartWorkoutImplCopyWith(
    _$StartWorkoutImpl value,
    $Res Function(_$StartWorkoutImpl) then,
  ) = __$$StartWorkoutImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<Exercise> exercises, int durationSeconds});
}

/// @nodoc
class __$$StartWorkoutImplCopyWithImpl<$Res>
    extends _$WorkoutEventCopyWithImpl<$Res, _$StartWorkoutImpl>
    implements _$$StartWorkoutImplCopyWith<$Res> {
  __$$StartWorkoutImplCopyWithImpl(
    _$StartWorkoutImpl _value,
    $Res Function(_$StartWorkoutImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of WorkoutEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? exercises = null, Object? durationSeconds = null}) {
    return _then(
      _$StartWorkoutImpl(
        exercises: null == exercises
            ? _value._exercises
            : exercises // ignore: cast_nullable_to_non_nullable
                  as List<Exercise>,
        durationSeconds: null == durationSeconds
            ? _value.durationSeconds
            : durationSeconds // ignore: cast_nullable_to_non_nullable
                  as int,
      ),
    );
  }
}

/// @nodoc

class _$StartWorkoutImpl implements StartWorkout {
  const _$StartWorkoutImpl({
    required final List<Exercise> exercises,
    required this.durationSeconds,
  }) : _exercises = exercises;

  final List<Exercise> _exercises;
  @override
  List<Exercise> get exercises {
    if (_exercises is EqualUnmodifiableListView) return _exercises;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_exercises);
  }

  @override
  final int durationSeconds;

  @override
  String toString() {
    return 'WorkoutEvent.startWorkout(exercises: $exercises, durationSeconds: $durationSeconds)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$StartWorkoutImpl &&
            const DeepCollectionEquality().equals(
              other._exercises,
              _exercises,
            ) &&
            (identical(other.durationSeconds, durationSeconds) ||
                other.durationSeconds == durationSeconds));
  }

  @override
  int get hashCode => Object.hash(
    runtimeType,
    const DeepCollectionEquality().hash(_exercises),
    durationSeconds,
  );

  /// Create a copy of WorkoutEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$StartWorkoutImplCopyWith<_$StartWorkoutImpl> get copyWith =>
      __$$StartWorkoutImplCopyWithImpl<_$StartWorkoutImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<Exercise> exercises, int durationSeconds)
    startWorkout,
    required TResult Function() tick,
    required TResult Function() togglePause,
    required TResult Function() stopWorkout,
  }) {
    return startWorkout(exercises, durationSeconds);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<Exercise> exercises, int durationSeconds)?
    startWorkout,
    TResult? Function()? tick,
    TResult? Function()? togglePause,
    TResult? Function()? stopWorkout,
  }) {
    return startWorkout?.call(exercises, durationSeconds);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<Exercise> exercises, int durationSeconds)?
    startWorkout,
    TResult Function()? tick,
    TResult Function()? togglePause,
    TResult Function()? stopWorkout,
    required TResult orElse(),
  }) {
    if (startWorkout != null) {
      return startWorkout(exercises, durationSeconds);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(StartWorkout value) startWorkout,
    required TResult Function(Tick value) tick,
    required TResult Function(TogglePause value) togglePause,
    required TResult Function(StopWorkout value) stopWorkout,
  }) {
    return startWorkout(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(StartWorkout value)? startWorkout,
    TResult? Function(Tick value)? tick,
    TResult? Function(TogglePause value)? togglePause,
    TResult? Function(StopWorkout value)? stopWorkout,
  }) {
    return startWorkout?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(StartWorkout value)? startWorkout,
    TResult Function(Tick value)? tick,
    TResult Function(TogglePause value)? togglePause,
    TResult Function(StopWorkout value)? stopWorkout,
    required TResult orElse(),
  }) {
    if (startWorkout != null) {
      return startWorkout(this);
    }
    return orElse();
  }
}

abstract class StartWorkout implements WorkoutEvent {
  const factory StartWorkout({
    required final List<Exercise> exercises,
    required final int durationSeconds,
  }) = _$StartWorkoutImpl;

  List<Exercise> get exercises;
  int get durationSeconds;

  /// Create a copy of WorkoutEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$StartWorkoutImplCopyWith<_$StartWorkoutImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$TickImplCopyWith<$Res> {
  factory _$$TickImplCopyWith(
    _$TickImpl value,
    $Res Function(_$TickImpl) then,
  ) = __$$TickImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$TickImplCopyWithImpl<$Res>
    extends _$WorkoutEventCopyWithImpl<$Res, _$TickImpl>
    implements _$$TickImplCopyWith<$Res> {
  __$$TickImplCopyWithImpl(_$TickImpl _value, $Res Function(_$TickImpl) _then)
    : super(_value, _then);

  /// Create a copy of WorkoutEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$TickImpl implements Tick {
  const _$TickImpl();

  @override
  String toString() {
    return 'WorkoutEvent.tick()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$TickImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<Exercise> exercises, int durationSeconds)
    startWorkout,
    required TResult Function() tick,
    required TResult Function() togglePause,
    required TResult Function() stopWorkout,
  }) {
    return tick();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<Exercise> exercises, int durationSeconds)?
    startWorkout,
    TResult? Function()? tick,
    TResult? Function()? togglePause,
    TResult? Function()? stopWorkout,
  }) {
    return tick?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<Exercise> exercises, int durationSeconds)?
    startWorkout,
    TResult Function()? tick,
    TResult Function()? togglePause,
    TResult Function()? stopWorkout,
    required TResult orElse(),
  }) {
    if (tick != null) {
      return tick();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(StartWorkout value) startWorkout,
    required TResult Function(Tick value) tick,
    required TResult Function(TogglePause value) togglePause,
    required TResult Function(StopWorkout value) stopWorkout,
  }) {
    return tick(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(StartWorkout value)? startWorkout,
    TResult? Function(Tick value)? tick,
    TResult? Function(TogglePause value)? togglePause,
    TResult? Function(StopWorkout value)? stopWorkout,
  }) {
    return tick?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(StartWorkout value)? startWorkout,
    TResult Function(Tick value)? tick,
    TResult Function(TogglePause value)? togglePause,
    TResult Function(StopWorkout value)? stopWorkout,
    required TResult orElse(),
  }) {
    if (tick != null) {
      return tick(this);
    }
    return orElse();
  }
}

abstract class Tick implements WorkoutEvent {
  const factory Tick() = _$TickImpl;
}

/// @nodoc
abstract class _$$TogglePauseImplCopyWith<$Res> {
  factory _$$TogglePauseImplCopyWith(
    _$TogglePauseImpl value,
    $Res Function(_$TogglePauseImpl) then,
  ) = __$$TogglePauseImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$TogglePauseImplCopyWithImpl<$Res>
    extends _$WorkoutEventCopyWithImpl<$Res, _$TogglePauseImpl>
    implements _$$TogglePauseImplCopyWith<$Res> {
  __$$TogglePauseImplCopyWithImpl(
    _$TogglePauseImpl _value,
    $Res Function(_$TogglePauseImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of WorkoutEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$TogglePauseImpl implements TogglePause {
  const _$TogglePauseImpl();

  @override
  String toString() {
    return 'WorkoutEvent.togglePause()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$TogglePauseImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<Exercise> exercises, int durationSeconds)
    startWorkout,
    required TResult Function() tick,
    required TResult Function() togglePause,
    required TResult Function() stopWorkout,
  }) {
    return togglePause();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<Exercise> exercises, int durationSeconds)?
    startWorkout,
    TResult? Function()? tick,
    TResult? Function()? togglePause,
    TResult? Function()? stopWorkout,
  }) {
    return togglePause?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<Exercise> exercises, int durationSeconds)?
    startWorkout,
    TResult Function()? tick,
    TResult Function()? togglePause,
    TResult Function()? stopWorkout,
    required TResult orElse(),
  }) {
    if (togglePause != null) {
      return togglePause();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(StartWorkout value) startWorkout,
    required TResult Function(Tick value) tick,
    required TResult Function(TogglePause value) togglePause,
    required TResult Function(StopWorkout value) stopWorkout,
  }) {
    return togglePause(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(StartWorkout value)? startWorkout,
    TResult? Function(Tick value)? tick,
    TResult? Function(TogglePause value)? togglePause,
    TResult? Function(StopWorkout value)? stopWorkout,
  }) {
    return togglePause?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(StartWorkout value)? startWorkout,
    TResult Function(Tick value)? tick,
    TResult Function(TogglePause value)? togglePause,
    TResult Function(StopWorkout value)? stopWorkout,
    required TResult orElse(),
  }) {
    if (togglePause != null) {
      return togglePause(this);
    }
    return orElse();
  }
}

abstract class TogglePause implements WorkoutEvent {
  const factory TogglePause() = _$TogglePauseImpl;
}

/// @nodoc
abstract class _$$StopWorkoutImplCopyWith<$Res> {
  factory _$$StopWorkoutImplCopyWith(
    _$StopWorkoutImpl value,
    $Res Function(_$StopWorkoutImpl) then,
  ) = __$$StopWorkoutImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$StopWorkoutImplCopyWithImpl<$Res>
    extends _$WorkoutEventCopyWithImpl<$Res, _$StopWorkoutImpl>
    implements _$$StopWorkoutImplCopyWith<$Res> {
  __$$StopWorkoutImplCopyWithImpl(
    _$StopWorkoutImpl _value,
    $Res Function(_$StopWorkoutImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of WorkoutEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$StopWorkoutImpl implements StopWorkout {
  const _$StopWorkoutImpl();

  @override
  String toString() {
    return 'WorkoutEvent.stopWorkout()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$StopWorkoutImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<Exercise> exercises, int durationSeconds)
    startWorkout,
    required TResult Function() tick,
    required TResult Function() togglePause,
    required TResult Function() stopWorkout,
  }) {
    return stopWorkout();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<Exercise> exercises, int durationSeconds)?
    startWorkout,
    TResult? Function()? tick,
    TResult? Function()? togglePause,
    TResult? Function()? stopWorkout,
  }) {
    return stopWorkout?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<Exercise> exercises, int durationSeconds)?
    startWorkout,
    TResult Function()? tick,
    TResult Function()? togglePause,
    TResult Function()? stopWorkout,
    required TResult orElse(),
  }) {
    if (stopWorkout != null) {
      return stopWorkout();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(StartWorkout value) startWorkout,
    required TResult Function(Tick value) tick,
    required TResult Function(TogglePause value) togglePause,
    required TResult Function(StopWorkout value) stopWorkout,
  }) {
    return stopWorkout(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(StartWorkout value)? startWorkout,
    TResult? Function(Tick value)? tick,
    TResult? Function(TogglePause value)? togglePause,
    TResult? Function(StopWorkout value)? stopWorkout,
  }) {
    return stopWorkout?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(StartWorkout value)? startWorkout,
    TResult Function(Tick value)? tick,
    TResult Function(TogglePause value)? togglePause,
    TResult Function(StopWorkout value)? stopWorkout,
    required TResult orElse(),
  }) {
    if (stopWorkout != null) {
      return stopWorkout(this);
    }
    return orElse();
  }
}

abstract class StopWorkout implements WorkoutEvent {
  const factory StopWorkout() = _$StopWorkoutImpl;
}
