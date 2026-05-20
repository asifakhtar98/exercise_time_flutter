// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'workout_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

/// @nodoc
mixin _$WorkoutState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(
      List<Exercise> exercises,
      int currentExerciseIndex,
      int durationSeconds,
      int secondsRemaining,
      bool isPaused,
    )
    active,
    required TResult Function() finished,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(
      List<Exercise> exercises,
      int currentExerciseIndex,
      int durationSeconds,
      int secondsRemaining,
      bool isPaused,
    )?
    active,
    TResult? Function()? finished,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(
      List<Exercise> exercises,
      int currentExerciseIndex,
      int durationSeconds,
      int secondsRemaining,
      bool isPaused,
    )?
    active,
    TResult Function()? finished,
    required TResult orElse(),
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(WorkoutInitial value) initial,
    required TResult Function(WorkoutActive value) active,
    required TResult Function(WorkoutFinished value) finished,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(WorkoutInitial value)? initial,
    TResult? Function(WorkoutActive value)? active,
    TResult? Function(WorkoutFinished value)? finished,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(WorkoutInitial value)? initial,
    TResult Function(WorkoutActive value)? active,
    TResult Function(WorkoutFinished value)? finished,
    required TResult orElse(),
  }) => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WorkoutStateCopyWith<$Res> {
  factory $WorkoutStateCopyWith(
    WorkoutState value,
    $Res Function(WorkoutState) then,
  ) = _$WorkoutStateCopyWithImpl<$Res, WorkoutState>;
}

/// @nodoc
class _$WorkoutStateCopyWithImpl<$Res, $Val extends WorkoutState>
    implements $WorkoutStateCopyWith<$Res> {
  _$WorkoutStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of WorkoutState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$WorkoutInitialImplCopyWith<$Res> {
  factory _$$WorkoutInitialImplCopyWith(
    _$WorkoutInitialImpl value,
    $Res Function(_$WorkoutInitialImpl) then,
  ) = __$$WorkoutInitialImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$WorkoutInitialImplCopyWithImpl<$Res>
    extends _$WorkoutStateCopyWithImpl<$Res, _$WorkoutInitialImpl>
    implements _$$WorkoutInitialImplCopyWith<$Res> {
  __$$WorkoutInitialImplCopyWithImpl(
    _$WorkoutInitialImpl _value,
    $Res Function(_$WorkoutInitialImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of WorkoutState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$WorkoutInitialImpl implements WorkoutInitial {
  const _$WorkoutInitialImpl();

  @override
  String toString() {
    return 'WorkoutState.initial()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$WorkoutInitialImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(
      List<Exercise> exercises,
      int currentExerciseIndex,
      int durationSeconds,
      int secondsRemaining,
      bool isPaused,
    )
    active,
    required TResult Function() finished,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(
      List<Exercise> exercises,
      int currentExerciseIndex,
      int durationSeconds,
      int secondsRemaining,
      bool isPaused,
    )?
    active,
    TResult? Function()? finished,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(
      List<Exercise> exercises,
      int currentExerciseIndex,
      int durationSeconds,
      int secondsRemaining,
      bool isPaused,
    )?
    active,
    TResult Function()? finished,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(WorkoutInitial value) initial,
    required TResult Function(WorkoutActive value) active,
    required TResult Function(WorkoutFinished value) finished,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(WorkoutInitial value)? initial,
    TResult? Function(WorkoutActive value)? active,
    TResult? Function(WorkoutFinished value)? finished,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(WorkoutInitial value)? initial,
    TResult Function(WorkoutActive value)? active,
    TResult Function(WorkoutFinished value)? finished,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class WorkoutInitial implements WorkoutState {
  const factory WorkoutInitial() = _$WorkoutInitialImpl;
}

/// @nodoc
abstract class _$$WorkoutActiveImplCopyWith<$Res> {
  factory _$$WorkoutActiveImplCopyWith(
    _$WorkoutActiveImpl value,
    $Res Function(_$WorkoutActiveImpl) then,
  ) = __$$WorkoutActiveImplCopyWithImpl<$Res>;
  @useResult
  $Res call({
    List<Exercise> exercises,
    int currentExerciseIndex,
    int durationSeconds,
    int secondsRemaining,
    bool isPaused,
  });
}

/// @nodoc
class __$$WorkoutActiveImplCopyWithImpl<$Res>
    extends _$WorkoutStateCopyWithImpl<$Res, _$WorkoutActiveImpl>
    implements _$$WorkoutActiveImplCopyWith<$Res> {
  __$$WorkoutActiveImplCopyWithImpl(
    _$WorkoutActiveImpl _value,
    $Res Function(_$WorkoutActiveImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of WorkoutState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? exercises = null,
    Object? currentExerciseIndex = null,
    Object? durationSeconds = null,
    Object? secondsRemaining = null,
    Object? isPaused = null,
  }) {
    return _then(
      _$WorkoutActiveImpl(
        exercises: null == exercises
            ? _value._exercises
            : exercises // ignore: cast_nullable_to_non_nullable
                  as List<Exercise>,
        currentExerciseIndex: null == currentExerciseIndex
            ? _value.currentExerciseIndex
            : currentExerciseIndex // ignore: cast_nullable_to_non_nullable
                  as int,
        durationSeconds: null == durationSeconds
            ? _value.durationSeconds
            : durationSeconds // ignore: cast_nullable_to_non_nullable
                  as int,
        secondsRemaining: null == secondsRemaining
            ? _value.secondsRemaining
            : secondsRemaining // ignore: cast_nullable_to_non_nullable
                  as int,
        isPaused: null == isPaused
            ? _value.isPaused
            : isPaused // ignore: cast_nullable_to_non_nullable
                  as bool,
      ),
    );
  }
}

/// @nodoc

class _$WorkoutActiveImpl implements WorkoutActive {
  const _$WorkoutActiveImpl({
    required final List<Exercise> exercises,
    required this.currentExerciseIndex,
    required this.durationSeconds,
    required this.secondsRemaining,
    required this.isPaused,
  }) : _exercises = exercises;

  final List<Exercise> _exercises;
  @override
  List<Exercise> get exercises {
    if (_exercises is EqualUnmodifiableListView) return _exercises;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_exercises);
  }

  @override
  final int currentExerciseIndex;
  @override
  final int durationSeconds;
  @override
  final int secondsRemaining;
  @override
  final bool isPaused;

  @override
  String toString() {
    return 'WorkoutState.active(exercises: $exercises, currentExerciseIndex: $currentExerciseIndex, durationSeconds: $durationSeconds, secondsRemaining: $secondsRemaining, isPaused: $isPaused)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$WorkoutActiveImpl &&
            const DeepCollectionEquality().equals(
              other._exercises,
              _exercises,
            ) &&
            (identical(other.currentExerciseIndex, currentExerciseIndex) ||
                other.currentExerciseIndex == currentExerciseIndex) &&
            (identical(other.durationSeconds, durationSeconds) ||
                other.durationSeconds == durationSeconds) &&
            (identical(other.secondsRemaining, secondsRemaining) ||
                other.secondsRemaining == secondsRemaining) &&
            (identical(other.isPaused, isPaused) ||
                other.isPaused == isPaused));
  }

  @override
  int get hashCode => Object.hash(
    runtimeType,
    const DeepCollectionEquality().hash(_exercises),
    currentExerciseIndex,
    durationSeconds,
    secondsRemaining,
    isPaused,
  );

  /// Create a copy of WorkoutState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$WorkoutActiveImplCopyWith<_$WorkoutActiveImpl> get copyWith =>
      __$$WorkoutActiveImplCopyWithImpl<_$WorkoutActiveImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(
      List<Exercise> exercises,
      int currentExerciseIndex,
      int durationSeconds,
      int secondsRemaining,
      bool isPaused,
    )
    active,
    required TResult Function() finished,
  }) {
    return active(
      exercises,
      currentExerciseIndex,
      durationSeconds,
      secondsRemaining,
      isPaused,
    );
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(
      List<Exercise> exercises,
      int currentExerciseIndex,
      int durationSeconds,
      int secondsRemaining,
      bool isPaused,
    )?
    active,
    TResult? Function()? finished,
  }) {
    return active?.call(
      exercises,
      currentExerciseIndex,
      durationSeconds,
      secondsRemaining,
      isPaused,
    );
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(
      List<Exercise> exercises,
      int currentExerciseIndex,
      int durationSeconds,
      int secondsRemaining,
      bool isPaused,
    )?
    active,
    TResult Function()? finished,
    required TResult orElse(),
  }) {
    if (active != null) {
      return active(
        exercises,
        currentExerciseIndex,
        durationSeconds,
        secondsRemaining,
        isPaused,
      );
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(WorkoutInitial value) initial,
    required TResult Function(WorkoutActive value) active,
    required TResult Function(WorkoutFinished value) finished,
  }) {
    return active(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(WorkoutInitial value)? initial,
    TResult? Function(WorkoutActive value)? active,
    TResult? Function(WorkoutFinished value)? finished,
  }) {
    return active?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(WorkoutInitial value)? initial,
    TResult Function(WorkoutActive value)? active,
    TResult Function(WorkoutFinished value)? finished,
    required TResult orElse(),
  }) {
    if (active != null) {
      return active(this);
    }
    return orElse();
  }
}

abstract class WorkoutActive implements WorkoutState {
  const factory WorkoutActive({
    required final List<Exercise> exercises,
    required final int currentExerciseIndex,
    required final int durationSeconds,
    required final int secondsRemaining,
    required final bool isPaused,
  }) = _$WorkoutActiveImpl;

  List<Exercise> get exercises;
  int get currentExerciseIndex;
  int get durationSeconds;
  int get secondsRemaining;
  bool get isPaused;

  /// Create a copy of WorkoutState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$WorkoutActiveImplCopyWith<_$WorkoutActiveImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$WorkoutFinishedImplCopyWith<$Res> {
  factory _$$WorkoutFinishedImplCopyWith(
    _$WorkoutFinishedImpl value,
    $Res Function(_$WorkoutFinishedImpl) then,
  ) = __$$WorkoutFinishedImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$WorkoutFinishedImplCopyWithImpl<$Res>
    extends _$WorkoutStateCopyWithImpl<$Res, _$WorkoutFinishedImpl>
    implements _$$WorkoutFinishedImplCopyWith<$Res> {
  __$$WorkoutFinishedImplCopyWithImpl(
    _$WorkoutFinishedImpl _value,
    $Res Function(_$WorkoutFinishedImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of WorkoutState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$WorkoutFinishedImpl implements WorkoutFinished {
  const _$WorkoutFinishedImpl();

  @override
  String toString() {
    return 'WorkoutState.finished()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$WorkoutFinishedImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(
      List<Exercise> exercises,
      int currentExerciseIndex,
      int durationSeconds,
      int secondsRemaining,
      bool isPaused,
    )
    active,
    required TResult Function() finished,
  }) {
    return finished();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(
      List<Exercise> exercises,
      int currentExerciseIndex,
      int durationSeconds,
      int secondsRemaining,
      bool isPaused,
    )?
    active,
    TResult? Function()? finished,
  }) {
    return finished?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(
      List<Exercise> exercises,
      int currentExerciseIndex,
      int durationSeconds,
      int secondsRemaining,
      bool isPaused,
    )?
    active,
    TResult Function()? finished,
    required TResult orElse(),
  }) {
    if (finished != null) {
      return finished();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(WorkoutInitial value) initial,
    required TResult Function(WorkoutActive value) active,
    required TResult Function(WorkoutFinished value) finished,
  }) {
    return finished(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(WorkoutInitial value)? initial,
    TResult? Function(WorkoutActive value)? active,
    TResult? Function(WorkoutFinished value)? finished,
  }) {
    return finished?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(WorkoutInitial value)? initial,
    TResult Function(WorkoutActive value)? active,
    TResult Function(WorkoutFinished value)? finished,
    required TResult orElse(),
  }) {
    if (finished != null) {
      return finished(this);
    }
    return orElse();
  }
}

abstract class WorkoutFinished implements WorkoutState {
  const factory WorkoutFinished() = _$WorkoutFinishedImpl;
}
