import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';

import '../../../domain/settings/timer_settings.dart';
import '../../../domain/usecases/get_timer_settings.dart';
import '../../../domain/usecases/save_timer_settings.dart';
import 'settings_event.dart';
import 'settings_state.dart';

/// Manages timer-duration preferences.
///
/// Depends on [GetTimerSettings] and [SaveTimerSettings] use cases
/// rather than the repository directly, enforcing the Dependency
/// Inversion Principle.
@injectable
class SettingsBloc extends Bloc<SettingsEvent, SettingsState> {
  final GetTimerSettings _getTimerSettings;
  final SaveTimerSettings _saveTimerSettings;

  SettingsBloc(this._getTimerSettings, this._saveTimerSettings)
    : super(const SettingsState.initial()) {
    on<LoadSettings>(_onLoad);
    on<UpdateDuration>(_onUpdateDuration);
  }

  Future<void> _onLoad(LoadSettings event, Emitter<SettingsState> emit) async {
    emit(const SettingsState.loading());
    try {
      final settings = await _getTimerSettings();
      emit(SettingsState.loaded(settings: settings));
    } catch (e) {
      emit(SettingsState.error(message: e.toString()));
    }
  }

  Future<void> _onUpdateDuration(
    UpdateDuration event,
    Emitter<SettingsState> emit,
  ) async {
    final currentState = state;
    if (currentState is SettingsLoaded) {
      final newSettings = TimerSettings(durationSeconds: event.durationSeconds);
      emit(SettingsState.loaded(settings: newSettings));
      try {
        await _saveTimerSettings(newSettings);
      } catch (e) {
        emit(SettingsState.error(message: e.toString()));
      }
    }
  }
}
