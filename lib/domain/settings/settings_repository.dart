import '../settings/timer_settings.dart';

/// Contract for persisting and retrieving user timer preferences.
///
/// Implementations decide *where* settings are stored (SharedPreferences,
/// local DB, remote, etc.). Consumers depend only on this abstraction.
abstract class SettingsRepository {
  /// Loads the saved [TimerSettings], or returns defaults if none exist.
  Future<TimerSettings> getSettings();

  /// Persists the given [settings] for future sessions.
  Future<void> saveSettings(TimerSettings settings);
}
