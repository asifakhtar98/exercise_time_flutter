// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'settings_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

/// @nodoc
mixin _$SettingsEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loadSettings,
    required TResult Function(int durationSeconds) updateDuration,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loadSettings,
    TResult? Function(int durationSeconds)? updateDuration,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loadSettings,
    TResult Function(int durationSeconds)? updateDuration,
    required TResult orElse(),
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadSettings value) loadSettings,
    required TResult Function(UpdateDuration value) updateDuration,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoadSettings value)? loadSettings,
    TResult? Function(UpdateDuration value)? updateDuration,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadSettings value)? loadSettings,
    TResult Function(UpdateDuration value)? updateDuration,
    required TResult orElse(),
  }) => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SettingsEventCopyWith<$Res> {
  factory $SettingsEventCopyWith(
    SettingsEvent value,
    $Res Function(SettingsEvent) then,
  ) = _$SettingsEventCopyWithImpl<$Res, SettingsEvent>;
}

/// @nodoc
class _$SettingsEventCopyWithImpl<$Res, $Val extends SettingsEvent>
    implements $SettingsEventCopyWith<$Res> {
  _$SettingsEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SettingsEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$LoadSettingsImplCopyWith<$Res> {
  factory _$$LoadSettingsImplCopyWith(
    _$LoadSettingsImpl value,
    $Res Function(_$LoadSettingsImpl) then,
  ) = __$$LoadSettingsImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LoadSettingsImplCopyWithImpl<$Res>
    extends _$SettingsEventCopyWithImpl<$Res, _$LoadSettingsImpl>
    implements _$$LoadSettingsImplCopyWith<$Res> {
  __$$LoadSettingsImplCopyWithImpl(
    _$LoadSettingsImpl _value,
    $Res Function(_$LoadSettingsImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of SettingsEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$LoadSettingsImpl implements LoadSettings {
  const _$LoadSettingsImpl();

  @override
  String toString() {
    return 'SettingsEvent.loadSettings()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$LoadSettingsImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loadSettings,
    required TResult Function(int durationSeconds) updateDuration,
  }) {
    return loadSettings();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loadSettings,
    TResult? Function(int durationSeconds)? updateDuration,
  }) {
    return loadSettings?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loadSettings,
    TResult Function(int durationSeconds)? updateDuration,
    required TResult orElse(),
  }) {
    if (loadSettings != null) {
      return loadSettings();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadSettings value) loadSettings,
    required TResult Function(UpdateDuration value) updateDuration,
  }) {
    return loadSettings(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoadSettings value)? loadSettings,
    TResult? Function(UpdateDuration value)? updateDuration,
  }) {
    return loadSettings?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadSettings value)? loadSettings,
    TResult Function(UpdateDuration value)? updateDuration,
    required TResult orElse(),
  }) {
    if (loadSettings != null) {
      return loadSettings(this);
    }
    return orElse();
  }
}

abstract class LoadSettings implements SettingsEvent {
  const factory LoadSettings() = _$LoadSettingsImpl;
}

/// @nodoc
abstract class _$$UpdateDurationImplCopyWith<$Res> {
  factory _$$UpdateDurationImplCopyWith(
    _$UpdateDurationImpl value,
    $Res Function(_$UpdateDurationImpl) then,
  ) = __$$UpdateDurationImplCopyWithImpl<$Res>;
  @useResult
  $Res call({int durationSeconds});
}

/// @nodoc
class __$$UpdateDurationImplCopyWithImpl<$Res>
    extends _$SettingsEventCopyWithImpl<$Res, _$UpdateDurationImpl>
    implements _$$UpdateDurationImplCopyWith<$Res> {
  __$$UpdateDurationImplCopyWithImpl(
    _$UpdateDurationImpl _value,
    $Res Function(_$UpdateDurationImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of SettingsEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? durationSeconds = null}) {
    return _then(
      _$UpdateDurationImpl(
        null == durationSeconds
            ? _value.durationSeconds
            : durationSeconds // ignore: cast_nullable_to_non_nullable
                  as int,
      ),
    );
  }
}

/// @nodoc

class _$UpdateDurationImpl implements UpdateDuration {
  const _$UpdateDurationImpl(this.durationSeconds);

  @override
  final int durationSeconds;

  @override
  String toString() {
    return 'SettingsEvent.updateDuration(durationSeconds: $durationSeconds)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UpdateDurationImpl &&
            (identical(other.durationSeconds, durationSeconds) ||
                other.durationSeconds == durationSeconds));
  }

  @override
  int get hashCode => Object.hash(runtimeType, durationSeconds);

  /// Create a copy of SettingsEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UpdateDurationImplCopyWith<_$UpdateDurationImpl> get copyWith =>
      __$$UpdateDurationImplCopyWithImpl<_$UpdateDurationImpl>(
        this,
        _$identity,
      );

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loadSettings,
    required TResult Function(int durationSeconds) updateDuration,
  }) {
    return updateDuration(durationSeconds);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loadSettings,
    TResult? Function(int durationSeconds)? updateDuration,
  }) {
    return updateDuration?.call(durationSeconds);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loadSettings,
    TResult Function(int durationSeconds)? updateDuration,
    required TResult orElse(),
  }) {
    if (updateDuration != null) {
      return updateDuration(durationSeconds);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadSettings value) loadSettings,
    required TResult Function(UpdateDuration value) updateDuration,
  }) {
    return updateDuration(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoadSettings value)? loadSettings,
    TResult? Function(UpdateDuration value)? updateDuration,
  }) {
    return updateDuration?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadSettings value)? loadSettings,
    TResult Function(UpdateDuration value)? updateDuration,
    required TResult orElse(),
  }) {
    if (updateDuration != null) {
      return updateDuration(this);
    }
    return orElse();
  }
}

abstract class UpdateDuration implements SettingsEvent {
  const factory UpdateDuration(final int durationSeconds) =
      _$UpdateDurationImpl;

  int get durationSeconds;

  /// Create a copy of SettingsEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UpdateDurationImplCopyWith<_$UpdateDurationImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
