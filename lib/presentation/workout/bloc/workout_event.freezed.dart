// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'workout_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$WorkoutEvent {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is WorkoutEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'WorkoutEvent()';
}


}

/// @nodoc
class $WorkoutEventCopyWith<$Res>  {
$WorkoutEventCopyWith(WorkoutEvent _, $Res Function(WorkoutEvent) __);
}


/// Adds pattern-matching-related methods to [WorkoutEvent].
extension WorkoutEventPatterns on WorkoutEvent {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( StartWorkout value)?  startWorkout,TResult Function( Tick value)?  tick,TResult Function( TogglePause value)?  togglePause,TResult Function( StopWorkout value)?  stopWorkout,TResult Function( NextExercise value)?  nextExercise,TResult Function( PreviousExercise value)?  previousExercise,required TResult orElse(),}){
final _that = this;
switch (_that) {
case StartWorkout() when startWorkout != null:
return startWorkout(_that);case Tick() when tick != null:
return tick(_that);case TogglePause() when togglePause != null:
return togglePause(_that);case StopWorkout() when stopWorkout != null:
return stopWorkout(_that);case NextExercise() when nextExercise != null:
return nextExercise(_that);case PreviousExercise() when previousExercise != null:
return previousExercise(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( StartWorkout value)  startWorkout,required TResult Function( Tick value)  tick,required TResult Function( TogglePause value)  togglePause,required TResult Function( StopWorkout value)  stopWorkout,required TResult Function( NextExercise value)  nextExercise,required TResult Function( PreviousExercise value)  previousExercise,}){
final _that = this;
switch (_that) {
case StartWorkout():
return startWorkout(_that);case Tick():
return tick(_that);case TogglePause():
return togglePause(_that);case StopWorkout():
return stopWorkout(_that);case NextExercise():
return nextExercise(_that);case PreviousExercise():
return previousExercise(_that);case _:
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( StartWorkout value)?  startWorkout,TResult? Function( Tick value)?  tick,TResult? Function( TogglePause value)?  togglePause,TResult? Function( StopWorkout value)?  stopWorkout,TResult? Function( NextExercise value)?  nextExercise,TResult? Function( PreviousExercise value)?  previousExercise,}){
final _that = this;
switch (_that) {
case StartWorkout() when startWorkout != null:
return startWorkout(_that);case Tick() when tick != null:
return tick(_that);case TogglePause() when togglePause != null:
return togglePause(_that);case StopWorkout() when stopWorkout != null:
return stopWorkout(_that);case NextExercise() when nextExercise != null:
return nextExercise(_that);case PreviousExercise() when previousExercise != null:
return previousExercise(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function( List<Exercise> exercises,  int durationSeconds)?  startWorkout,TResult Function()?  tick,TResult Function()?  togglePause,TResult Function()?  stopWorkout,TResult Function()?  nextExercise,TResult Function()?  previousExercise,required TResult orElse(),}) {final _that = this;
switch (_that) {
case StartWorkout() when startWorkout != null:
return startWorkout(_that.exercises,_that.durationSeconds);case Tick() when tick != null:
return tick();case TogglePause() when togglePause != null:
return togglePause();case StopWorkout() when stopWorkout != null:
return stopWorkout();case NextExercise() when nextExercise != null:
return nextExercise();case PreviousExercise() when previousExercise != null:
return previousExercise();case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function( List<Exercise> exercises,  int durationSeconds)  startWorkout,required TResult Function()  tick,required TResult Function()  togglePause,required TResult Function()  stopWorkout,required TResult Function()  nextExercise,required TResult Function()  previousExercise,}) {final _that = this;
switch (_that) {
case StartWorkout():
return startWorkout(_that.exercises,_that.durationSeconds);case Tick():
return tick();case TogglePause():
return togglePause();case StopWorkout():
return stopWorkout();case NextExercise():
return nextExercise();case PreviousExercise():
return previousExercise();case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function( List<Exercise> exercises,  int durationSeconds)?  startWorkout,TResult? Function()?  tick,TResult? Function()?  togglePause,TResult? Function()?  stopWorkout,TResult? Function()?  nextExercise,TResult? Function()?  previousExercise,}) {final _that = this;
switch (_that) {
case StartWorkout() when startWorkout != null:
return startWorkout(_that.exercises,_that.durationSeconds);case Tick() when tick != null:
return tick();case TogglePause() when togglePause != null:
return togglePause();case StopWorkout() when stopWorkout != null:
return stopWorkout();case NextExercise() when nextExercise != null:
return nextExercise();case PreviousExercise() when previousExercise != null:
return previousExercise();case _:
  return null;

}
}

}

/// @nodoc


class StartWorkout implements WorkoutEvent {
  const StartWorkout({required final  List<Exercise> exercises, required this.durationSeconds}): _exercises = exercises;
  

 final  List<Exercise> _exercises;
 List<Exercise> get exercises {
  if (_exercises is EqualUnmodifiableListView) return _exercises;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_exercises);
}

 final  int durationSeconds;

/// Create a copy of WorkoutEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$StartWorkoutCopyWith<StartWorkout> get copyWith => _$StartWorkoutCopyWithImpl<StartWorkout>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is StartWorkout&&const DeepCollectionEquality().equals(other._exercises, _exercises)&&(identical(other.durationSeconds, durationSeconds) || other.durationSeconds == durationSeconds));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_exercises),durationSeconds);

@override
String toString() {
  return 'WorkoutEvent.startWorkout(exercises: $exercises, durationSeconds: $durationSeconds)';
}


}

/// @nodoc
abstract mixin class $StartWorkoutCopyWith<$Res> implements $WorkoutEventCopyWith<$Res> {
  factory $StartWorkoutCopyWith(StartWorkout value, $Res Function(StartWorkout) _then) = _$StartWorkoutCopyWithImpl;
@useResult
$Res call({
 List<Exercise> exercises, int durationSeconds
});




}
/// @nodoc
class _$StartWorkoutCopyWithImpl<$Res>
    implements $StartWorkoutCopyWith<$Res> {
  _$StartWorkoutCopyWithImpl(this._self, this._then);

  final StartWorkout _self;
  final $Res Function(StartWorkout) _then;

/// Create a copy of WorkoutEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? exercises = null,Object? durationSeconds = null,}) {
  return _then(StartWorkout(
exercises: null == exercises ? _self._exercises : exercises // ignore: cast_nullable_to_non_nullable
as List<Exercise>,durationSeconds: null == durationSeconds ? _self.durationSeconds : durationSeconds // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

/// @nodoc


class Tick implements WorkoutEvent {
  const Tick();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Tick);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'WorkoutEvent.tick()';
}


}




/// @nodoc


class TogglePause implements WorkoutEvent {
  const TogglePause();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is TogglePause);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'WorkoutEvent.togglePause()';
}


}




/// @nodoc


class StopWorkout implements WorkoutEvent {
  const StopWorkout();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is StopWorkout);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'WorkoutEvent.stopWorkout()';
}


}




/// @nodoc


class NextExercise implements WorkoutEvent {
  const NextExercise();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is NextExercise);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'WorkoutEvent.nextExercise()';
}


}




/// @nodoc


class PreviousExercise implements WorkoutEvent {
  const PreviousExercise();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PreviousExercise);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'WorkoutEvent.previousExercise()';
}


}




// dart format on
