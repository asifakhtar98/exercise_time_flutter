import 'package:exercise_time/domain/settings/settings_repository.dart';
import 'package:exercise_time/domain/settings/timer_settings.dart';
import 'package:exercise_time/domain/usecases/save_timer_settings.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';

class MockSettingsRepository extends Mock implements SettingsRepository {}

void main() {
  late MockSettingsRepository mockRepo;
  late SaveTimerSettings useCase;

  setUp(() {
    mockRepo = MockSettingsRepository();
    useCase = SaveTimerSettings(mockRepo);
  });

  test('delegates to SettingsRepository.saveSettings()', () async {
    const settings = TimerSettings(durationSeconds: 45);
    when(() => mockRepo.saveSettings(settings)).thenAnswer((_) async {});

    await useCase(settings);

    verify(() => mockRepo.saveSettings(settings)).called(1);
  });
}
