// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'exercise_list_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$ExerciseListState {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ExerciseListState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'ExerciseListState()';
}


}

/// @nodoc
class $ExerciseListStateCopyWith<$Res>  {
$ExerciseListStateCopyWith(ExerciseListState _, $Res Function(ExerciseListState) __);
}


/// Adds pattern-matching-related methods to [ExerciseListState].
extension ExerciseListStatePatterns on ExerciseListState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( ExerciseListInitial value)?  initial,TResult Function( ExerciseListLoaded value)?  loaded,required TResult orElse(),}){
final _that = this;
switch (_that) {
case ExerciseListInitial() when initial != null:
return initial(_that);case ExerciseListLoaded() when loaded != null:
return loaded(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( ExerciseListInitial value)  initial,required TResult Function( ExerciseListLoaded value)  loaded,}){
final _that = this;
switch (_that) {
case ExerciseListInitial():
return initial(_that);case ExerciseListLoaded():
return loaded(_that);case _:
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( ExerciseListInitial value)?  initial,TResult? Function( ExerciseListLoaded value)?  loaded,}){
final _that = this;
switch (_that) {
case ExerciseListInitial() when initial != null:
return initial(_that);case ExerciseListLoaded() when loaded != null:
return loaded(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  initial,TResult Function( List<Exercise> exercises)?  loaded,required TResult orElse(),}) {final _that = this;
switch (_that) {
case ExerciseListInitial() when initial != null:
return initial();case ExerciseListLoaded() when loaded != null:
return loaded(_that.exercises);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  initial,required TResult Function( List<Exercise> exercises)  loaded,}) {final _that = this;
switch (_that) {
case ExerciseListInitial():
return initial();case ExerciseListLoaded():
return loaded(_that.exercises);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  initial,TResult? Function( List<Exercise> exercises)?  loaded,}) {final _that = this;
switch (_that) {
case ExerciseListInitial() when initial != null:
return initial();case ExerciseListLoaded() when loaded != null:
return loaded(_that.exercises);case _:
  return null;

}
}

}

/// @nodoc


class ExerciseListInitial implements ExerciseListState {
  const ExerciseListInitial();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ExerciseListInitial);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'ExerciseListState.initial()';
}


}




/// @nodoc


class ExerciseListLoaded implements ExerciseListState {
  const ExerciseListLoaded({required final  List<Exercise> exercises}): _exercises = exercises;
  

 final  List<Exercise> _exercises;
 List<Exercise> get exercises {
  if (_exercises is EqualUnmodifiableListView) return _exercises;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_exercises);
}


/// Create a copy of ExerciseListState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ExerciseListLoadedCopyWith<ExerciseListLoaded> get copyWith => _$ExerciseListLoadedCopyWithImpl<ExerciseListLoaded>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ExerciseListLoaded&&const DeepCollectionEquality().equals(other._exercises, _exercises));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_exercises));

@override
String toString() {
  return 'ExerciseListState.loaded(exercises: $exercises)';
}


}

/// @nodoc
abstract mixin class $ExerciseListLoadedCopyWith<$Res> implements $ExerciseListStateCopyWith<$Res> {
  factory $ExerciseListLoadedCopyWith(ExerciseListLoaded value, $Res Function(ExerciseListLoaded) _then) = _$ExerciseListLoadedCopyWithImpl;
@useResult
$Res call({
 List<Exercise> exercises
});




}
/// @nodoc
class _$ExerciseListLoadedCopyWithImpl<$Res>
    implements $ExerciseListLoadedCopyWith<$Res> {
  _$ExerciseListLoadedCopyWithImpl(this._self, this._then);

  final ExerciseListLoaded _self;
  final $Res Function(ExerciseListLoaded) _then;

/// Create a copy of ExerciseListState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? exercises = null,}) {
  return _then(ExerciseListLoaded(
exercises: null == exercises ? _self._exercises : exercises // ignore: cast_nullable_to_non_nullable
as List<Exercise>,
  ));
}


}

// dart format on
