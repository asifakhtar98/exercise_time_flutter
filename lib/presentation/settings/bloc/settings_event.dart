import 'package:freezed_annotation/freezed_annotation.dart';

part 'settings_event.freezed.dart';

/// Events dispatched to [SettingsBloc].
@freezed
abstract class SettingsEvent with _$SettingsEvent {
  const factory SettingsEvent.loadSettings() = LoadSettings;
  const factory SettingsEvent.updateDuration(int durationSeconds) =
      UpdateDuration;
}
