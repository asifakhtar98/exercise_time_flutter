// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'timer_settings.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$TimerSettings {

 int get durationSeconds;
/// Create a copy of TimerSettings
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$TimerSettingsCopyWith<TimerSettings> get copyWith => _$TimerSettingsCopyWithImpl<TimerSettings>(this as TimerSettings, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is TimerSettings&&(identical(other.durationSeconds, durationSeconds) || other.durationSeconds == durationSeconds));
}


@override
int get hashCode => Object.hash(runtimeType,durationSeconds);

@override
String toString() {
  return 'TimerSettings(durationSeconds: $durationSeconds)';
}


}

/// @nodoc
abstract mixin class $TimerSettingsCopyWith<$Res>  {
  factory $TimerSettingsCopyWith(TimerSettings value, $Res Function(TimerSettings) _then) = _$TimerSettingsCopyWithImpl;
@useResult
$Res call({
 int durationSeconds
});




}
/// @nodoc
class _$TimerSettingsCopyWithImpl<$Res>
    implements $TimerSettingsCopyWith<$Res> {
  _$TimerSettingsCopyWithImpl(this._self, this._then);

  final TimerSettings _self;
  final $Res Function(TimerSettings) _then;

/// Create a copy of TimerSettings
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? durationSeconds = null,}) {
  return _then(_self.copyWith(
durationSeconds: null == durationSeconds ? _self.durationSeconds : durationSeconds // ignore: cast_nullable_to_non_nullable
as int,
  ));
}

}


/// Adds pattern-matching-related methods to [TimerSettings].
extension TimerSettingsPatterns on TimerSettings {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _TimerSettings value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _TimerSettings() when $default != null:
return $default(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _TimerSettings value)  $default,){
final _that = this;
switch (_that) {
case _TimerSettings():
return $default(_that);case _:
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _TimerSettings value)?  $default,){
final _that = this;
switch (_that) {
case _TimerSettings() when $default != null:
return $default(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int durationSeconds)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _TimerSettings() when $default != null:
return $default(_that.durationSeconds);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int durationSeconds)  $default,) {final _that = this;
switch (_that) {
case _TimerSettings():
return $default(_that.durationSeconds);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int durationSeconds)?  $default,) {final _that = this;
switch (_that) {
case _TimerSettings() when $default != null:
return $default(_that.durationSeconds);case _:
  return null;

}
}

}

/// @nodoc


class _TimerSettings implements TimerSettings {
  const _TimerSettings({required this.durationSeconds});
  

@override final  int durationSeconds;

/// Create a copy of TimerSettings
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$TimerSettingsCopyWith<_TimerSettings> get copyWith => __$TimerSettingsCopyWithImpl<_TimerSettings>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _TimerSettings&&(identical(other.durationSeconds, durationSeconds) || other.durationSeconds == durationSeconds));
}


@override
int get hashCode => Object.hash(runtimeType,durationSeconds);

@override
String toString() {
  return 'TimerSettings(durationSeconds: $durationSeconds)';
}


}

/// @nodoc
abstract mixin class _$TimerSettingsCopyWith<$Res> implements $TimerSettingsCopyWith<$Res> {
  factory _$TimerSettingsCopyWith(_TimerSettings value, $Res Function(_TimerSettings) _then) = __$TimerSettingsCopyWithImpl;
@override @useResult
$Res call({
 int durationSeconds
});




}
/// @nodoc
class __$TimerSettingsCopyWithImpl<$Res>
    implements _$TimerSettingsCopyWith<$Res> {
  __$TimerSettingsCopyWithImpl(this._self, this._then);

  final _TimerSettings _self;
  final $Res Function(_TimerSettings) _then;

/// Create a copy of TimerSettings
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? durationSeconds = null,}) {
  return _then(_TimerSettings(
durationSeconds: null == durationSeconds ? _self.durationSeconds : durationSeconds // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

// dart format on
