import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:exercise_time/domain/settings/timer_settings.dart';

part 'settings_state.freezed.dart';

@freezed
class SettingsState with _$SettingsState {
  const factory SettingsState.initial() = SettingsInitial;
  const factory SettingsState.loading() = SettingsLoading;
  const factory SettingsState.loaded({required TimerSettings settings}) = SettingsLoaded;
  const factory SettingsState.error({required String message}) = SettingsError;
}
