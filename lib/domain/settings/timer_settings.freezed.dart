// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'timer_settings.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

/// @nodoc
mixin _$TimerSettings {
  int get durationSeconds => throw _privateConstructorUsedError;

  /// Create a copy of TimerSettings
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $TimerSettingsCopyWith<TimerSettings> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TimerSettingsCopyWith<$Res> {
  factory $TimerSettingsCopyWith(
    TimerSettings value,
    $Res Function(TimerSettings) then,
  ) = _$TimerSettingsCopyWithImpl<$Res, TimerSettings>;
  @useResult
  $Res call({int durationSeconds});
}

/// @nodoc
class _$TimerSettingsCopyWithImpl<$Res, $Val extends TimerSettings>
    implements $TimerSettingsCopyWith<$Res> {
  _$TimerSettingsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of TimerSettings
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? durationSeconds = null}) {
    return _then(
      _value.copyWith(
            durationSeconds: null == durationSeconds
                ? _value.durationSeconds
                : durationSeconds // ignore: cast_nullable_to_non_nullable
                      as int,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$TimerSettingsImplCopyWith<$Res>
    implements $TimerSettingsCopyWith<$Res> {
  factory _$$TimerSettingsImplCopyWith(
    _$TimerSettingsImpl value,
    $Res Function(_$TimerSettingsImpl) then,
  ) = __$$TimerSettingsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int durationSeconds});
}

/// @nodoc
class __$$TimerSettingsImplCopyWithImpl<$Res>
    extends _$TimerSettingsCopyWithImpl<$Res, _$TimerSettingsImpl>
    implements _$$TimerSettingsImplCopyWith<$Res> {
  __$$TimerSettingsImplCopyWithImpl(
    _$TimerSettingsImpl _value,
    $Res Function(_$TimerSettingsImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of TimerSettings
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? durationSeconds = null}) {
    return _then(
      _$TimerSettingsImpl(
        durationSeconds: null == durationSeconds
            ? _value.durationSeconds
            : durationSeconds // ignore: cast_nullable_to_non_nullable
                  as int,
      ),
    );
  }
}

/// @nodoc

class _$TimerSettingsImpl implements _TimerSettings {
  const _$TimerSettingsImpl({required this.durationSeconds});

  @override
  final int durationSeconds;

  @override
  String toString() {
    return 'TimerSettings(durationSeconds: $durationSeconds)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TimerSettingsImpl &&
            (identical(other.durationSeconds, durationSeconds) ||
                other.durationSeconds == durationSeconds));
  }

  @override
  int get hashCode => Object.hash(runtimeType, durationSeconds);

  /// Create a copy of TimerSettings
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$TimerSettingsImplCopyWith<_$TimerSettingsImpl> get copyWith =>
      __$$TimerSettingsImplCopyWithImpl<_$TimerSettingsImpl>(this, _$identity);
}

abstract class _TimerSettings implements TimerSettings {
  const factory _TimerSettings({required final int durationSeconds}) =
      _$TimerSettingsImpl;

  @override
  int get durationSeconds;

  /// Create a copy of TimerSettings
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$TimerSettingsImplCopyWith<_$TimerSettingsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
