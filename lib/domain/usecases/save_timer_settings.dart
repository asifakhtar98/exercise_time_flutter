import 'package:injectable/injectable.dart';

import '../settings/settings_repository.dart';
import '../settings/timer_settings.dart';

/// Persists timer settings to storage.
///
/// Single-responsibility use case that isolates the Bloc from the
/// repository contract.
@injectable
class SaveTimerSettings {
  final SettingsRepository _repository;

  const SaveTimerSettings(this._repository);

  /// Saves the given [settings] for future sessions.
  Future<void> call(TimerSettings settings) =>
      _repository.saveSettings(settings);
}
