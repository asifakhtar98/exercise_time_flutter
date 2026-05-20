import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';
import '../../../../domain/settings/settings_repository.dart';
import '../../../../domain/settings/timer_settings.dart';
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
        emit(const SettingsState.loading());
        try {
          final newSettings = TimerSettings(durationSeconds: event.durationSeconds);
          await _settingsRepository.saveSettings(newSettings);
          emit(SettingsState.loaded(settings: newSettings));
        } catch (e) {
          emit(SettingsState.error(message: e.toString()));
        }
      }
    });
  }
}
