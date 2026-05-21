// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'settings_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$SettingsEvent {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SettingsEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'SettingsEvent()';
}


}

/// @nodoc
class $SettingsEventCopyWith<$Res>  {
$SettingsEventCopyWith(SettingsEvent _, $Res Function(SettingsEvent) __);
}


/// Adds pattern-matching-related methods to [SettingsEvent].
extension SettingsEventPatterns on SettingsEvent {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( LoadSettings value)?  loadSettings,TResult Function( UpdateDuration value)?  updateDuration,required TResult orElse(),}){
final _that = this;
switch (_that) {
case LoadSettings() when loadSettings != null:
return loadSettings(_that);case UpdateDuration() when updateDuration != null:
return updateDuration(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( LoadSettings value)  loadSettings,required TResult Function( UpdateDuration value)  updateDuration,}){
final _that = this;
switch (_that) {
case LoadSettings():
return loadSettings(_that);case UpdateDuration():
return updateDuration(_that);case _:
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( LoadSettings value)?  loadSettings,TResult? Function( UpdateDuration value)?  updateDuration,}){
final _that = this;
switch (_that) {
case LoadSettings() when loadSettings != null:
return loadSettings(_that);case UpdateDuration() when updateDuration != null:
return updateDuration(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  loadSettings,TResult Function( int durationSeconds)?  updateDuration,required TResult orElse(),}) {final _that = this;
switch (_that) {
case LoadSettings() when loadSettings != null:
return loadSettings();case UpdateDuration() when updateDuration != null:
return updateDuration(_that.durationSeconds);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  loadSettings,required TResult Function( int durationSeconds)  updateDuration,}) {final _that = this;
switch (_that) {
case LoadSettings():
return loadSettings();case UpdateDuration():
return updateDuration(_that.durationSeconds);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  loadSettings,TResult? Function( int durationSeconds)?  updateDuration,}) {final _that = this;
switch (_that) {
case LoadSettings() when loadSettings != null:
return loadSettings();case UpdateDuration() when updateDuration != null:
return updateDuration(_that.durationSeconds);case _:
  return null;

}
}

}

/// @nodoc


class LoadSettings implements SettingsEvent {
  const LoadSettings();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is LoadSettings);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'SettingsEvent.loadSettings()';
}


}




/// @nodoc


class UpdateDuration implements SettingsEvent {
  const UpdateDuration(this.durationSeconds);
  

 final  int durationSeconds;

/// Create a copy of SettingsEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$UpdateDurationCopyWith<UpdateDuration> get copyWith => _$UpdateDurationCopyWithImpl<UpdateDuration>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is UpdateDuration&&(identical(other.durationSeconds, durationSeconds) || other.durationSeconds == durationSeconds));
}


@override
int get hashCode => Object.hash(runtimeType,durationSeconds);

@override
String toString() {
  return 'SettingsEvent.updateDuration(durationSeconds: $durationSeconds)';
}


}

/// @nodoc
abstract mixin class $UpdateDurationCopyWith<$Res> implements $SettingsEventCopyWith<$Res> {
  factory $UpdateDurationCopyWith(UpdateDuration value, $Res Function(UpdateDuration) _then) = _$UpdateDurationCopyWithImpl;
@useResult
$Res call({
 int durationSeconds
});




}
/// @nodoc
class _$UpdateDurationCopyWithImpl<$Res>
    implements $UpdateDurationCopyWith<$Res> {
  _$UpdateDurationCopyWithImpl(this._self, this._then);

  final UpdateDuration _self;
  final $Res Function(UpdateDuration) _then;

/// Create a copy of SettingsEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? durationSeconds = null,}) {
  return _then(UpdateDuration(
null == durationSeconds ? _self.durationSeconds : durationSeconds // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

// dart format on
