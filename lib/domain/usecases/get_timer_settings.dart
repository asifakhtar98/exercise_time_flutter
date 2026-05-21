import 'package:injectable/injectable.dart';

import '../settings/settings_repository.dart';
import '../settings/timer_settings.dart';

/// Loads persisted timer settings.
///
/// Single-responsibility use case that isolates the Bloc from the
/// repository contract.
@injectable
class GetTimerSettings {
  final SettingsRepository _repository;

  const GetTimerSettings(this._repository);

  /// Returns the current [TimerSettings], or defaults if none are saved.
  Future<TimerSettings> call() => _repository.getSettings();
}
