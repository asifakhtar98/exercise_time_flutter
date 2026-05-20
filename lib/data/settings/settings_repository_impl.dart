import 'package:injectable/injectable.dart';
import 'package:shared_preferences/shared_preferences.dart';
import '../../domain/settings/settings_repository.dart';
import '../../domain/settings/timer_settings.dart';

@LazySingleton(as: SettingsRepository)
class SettingsRepositoryImpl implements SettingsRepository {
  static const _keyDuration = 'timer_duration_seconds';
  static const _defaultDuration = 15;

  @override
  Future<TimerSettings> getSettings() async {
    final prefs = await SharedPreferences.getInstance();
    final duration = prefs.getInt(_keyDuration) ?? _defaultDuration;
    return TimerSettings(durationSeconds: duration);
  }

  @override
  Future<void> saveSettings(TimerSettings settings) async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.setInt(_keyDuration, settings.durationSeconds);
  }
}
