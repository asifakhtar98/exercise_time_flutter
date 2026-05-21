import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:exercise_time/domain/settings/settings_repository.dart';
import 'package:exercise_time/domain/settings/timer_settings.dart';
import 'settings_event.dart';
import 'settings_state.dart';

@injectable
class SettingsBloc extends Bloc<SettingsEvent, SettingsState> {
  final SettingsRepository _settingsRepository;

  SettingsBloc(this._settingsRepository) : super(const SettingsState.initial()) {
    on<LoadSettings>((event, emit) async {
      emit(const SettingsState.loading());
      try {
        final settings = await _settingsRepository.getSettings();
        emit(SettingsState.loaded(settings: settings));
      } catch (e) {
        emit(SettingsState.error(message: e.toString()));
      }
    });

    on<UpdateDuration>((event, emit) async {
      final currentState = state;
      if (currentState is SettingsLoaded) {
        final newSettings = TimerSettings(durationSeconds: event.durationSeconds);
        emit(SettingsState.loaded(settings: newSettings));
        try {
          await _settingsRepository.saveSettings(newSettings);
        } catch (e) {
          emit(SettingsState.error(message: e.toString()));
        }
      }
    });
  }
}
