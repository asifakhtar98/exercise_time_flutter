// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'workout_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$WorkoutState {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is WorkoutState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'WorkoutState()';
}


}

/// @nodoc
class $WorkoutStateCopyWith<$Res>  {
$WorkoutStateCopyWith(WorkoutState _, $Res Function(WorkoutState) __);
}


/// Adds pattern-matching-related methods to [WorkoutState].
extension WorkoutStatePatterns on WorkoutState {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( WorkoutInitial value)?  initial,TResult Function( WorkoutActive value)?  active,TResult Function( WorkoutFinished value)?  finished,required TResult orElse(),}){
final _that = this;
switch (_that) {
case WorkoutInitial() when initial != null:
return initial(_that);case WorkoutActive() when active != null:
return active(_that);case WorkoutFinished() when finished != null:
return finished(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( WorkoutInitial value)  initial,required TResult Function( WorkoutActive value)  active,required TResult Function( WorkoutFinished value)  finished,}){
final _that = this;
switch (_that) {
case WorkoutInitial():
return initial(_that);case WorkoutActive():
return active(_that);case WorkoutFinished():
return finished(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( WorkoutInitial value)?  initial,TResult? Function( WorkoutActive value)?  active,TResult? Function( WorkoutFinished value)?  finished,}){
final _that = this;
switch (_that) {
case WorkoutInitial() when initial != null:
return initial(_that);case WorkoutActive() when active != null:
return active(_that);case WorkoutFinished() when finished != null:
return finished(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  initial,TResult Function( List<Exercise> exercises,  int currentExerciseIndex,  int durationSeconds,  int secondsRemaining,  bool isPaused)?  active,TResult Function()?  finished,required TResult orElse(),}) {final _that = this;
switch (_that) {
case WorkoutInitial() when initial != null:
return initial();case WorkoutActive() when active != null:
return active(_that.exercises,_that.currentExerciseIndex,_that.durationSeconds,_that.secondsRemaining,_that.isPaused);case WorkoutFinished() when finished != null:
return finished();case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  initial,required TResult Function( List<Exercise> exercises,  int currentExerciseIndex,  int durationSeconds,  int secondsRemaining,  bool isPaused)  active,required TResult Function()  finished,}) {final _that = this;
switch (_that) {
case WorkoutInitial():
return initial();case WorkoutActive():
return active(_that.exercises,_that.currentExerciseIndex,_that.durationSeconds,_that.secondsRemaining,_that.isPaused);case WorkoutFinished():
return finished();case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  initial,TResult? Function( List<Exercise> exercises,  int currentExerciseIndex,  int durationSeconds,  int secondsRemaining,  bool isPaused)?  active,TResult? Function()?  finished,}) {final _that = this;
switch (_that) {
case WorkoutInitial() when initial != null:
return initial();case WorkoutActive() when active != null:
return active(_that.exercises,_that.currentExerciseIndex,_that.durationSeconds,_that.secondsRemaining,_that.isPaused);case WorkoutFinished() when finished != null:
return finished();case _:
  return null;

}
}

}

/// @nodoc


class WorkoutInitial implements WorkoutState {
  const WorkoutInitial();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is WorkoutInitial);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'WorkoutState.initial()';
}


}




/// @nodoc


class WorkoutActive implements WorkoutState {
  const WorkoutActive({required final  List<Exercise> exercises, required this.currentExerciseIndex, required this.durationSeconds, required this.secondsRemaining, required this.isPaused}): _exercises = exercises;
  

 final  List<Exercise> _exercises;
 List<Exercise> get exercises {
  if (_exercises is EqualUnmodifiableListView) return _exercises;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_exercises);
}

 final  int currentExerciseIndex;
 final  int durationSeconds;
 final  int secondsRemaining;
 final  bool isPaused;

/// Create a copy of WorkoutState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$WorkoutActiveCopyWith<WorkoutActive> get copyWith => _$WorkoutActiveCopyWithImpl<WorkoutActive>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is WorkoutActive&&const DeepCollectionEquality().equals(other._exercises, _exercises)&&(identical(other.currentExerciseIndex, currentExerciseIndex) || other.currentExerciseIndex == currentExerciseIndex)&&(identical(other.durationSeconds, durationSeconds) || other.durationSeconds == durationSeconds)&&(identical(other.secondsRemaining, secondsRemaining) || other.secondsRemaining == secondsRemaining)&&(identical(other.isPaused, isPaused) || other.isPaused == isPaused));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_exercises),currentExerciseIndex,durationSeconds,secondsRemaining,isPaused);

@override
String toString() {
  return 'WorkoutState.active(exercises: $exercises, currentExerciseIndex: $currentExerciseIndex, durationSeconds: $durationSeconds, secondsRemaining: $secondsRemaining, isPaused: $isPaused)';
}


}

/// @nodoc
abstract mixin class $WorkoutActiveCopyWith<$Res> implements $WorkoutStateCopyWith<$Res> {
  factory $WorkoutActiveCopyWith(WorkoutActive value, $Res Function(WorkoutActive) _then) = _$WorkoutActiveCopyWithImpl;
@useResult
$Res call({
 List<Exercise> exercises, int currentExerciseIndex, int durationSeconds, int secondsRemaining, bool isPaused
});




}
/// @nodoc
class _$WorkoutActiveCopyWithImpl<$Res>
    implements $WorkoutActiveCopyWith<$Res> {
  _$WorkoutActiveCopyWithImpl(this._self, this._then);

  final WorkoutActive _self;
  final $Res Function(WorkoutActive) _then;

/// Create a copy of WorkoutState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? exercises = null,Object? currentExerciseIndex = null,Object? durationSeconds = null,Object? secondsRemaining = null,Object? isPaused = null,}) {
  return _then(WorkoutActive(
exercises: null == exercises ? _self._exercises : exercises // ignore: cast_nullable_to_non_nullable
as List<Exercise>,currentExerciseIndex: null == currentExerciseIndex ? _self.currentExerciseIndex : currentExerciseIndex // ignore: cast_nullable_to_non_nullable
as int,durationSeconds: null == durationSeconds ? _self.durationSeconds : durationSeconds // ignore: cast_nullable_to_non_nullable
as int,secondsRemaining: null == secondsRemaining ? _self.secondsRemaining : secondsRemaining // ignore: cast_nullable_to_non_nullable
as int,isPaused: null == isPaused ? _self.isPaused : isPaused // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}

/// @nodoc


class WorkoutFinished implements WorkoutState {
  const WorkoutFinished();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is WorkoutFinished);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'WorkoutState.finished()';
}


}




// dart format on
