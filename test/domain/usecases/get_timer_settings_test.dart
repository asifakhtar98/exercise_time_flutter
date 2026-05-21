import 'package:exercise_time/domain/settings/settings_repository.dart';
import 'package:exercise_time/domain/settings/timer_settings.dart';
import 'package:exercise_time/domain/usecases/get_timer_settings.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';

class MockSettingsRepository extends Mock implements SettingsRepository {}

void main() {
  late MockSettingsRepository mockRepo;
  late GetTimerSettings useCase;

  setUp(() {
    mockRepo = MockSettingsRepository();
    useCase = GetTimerSettings(mockRepo);
  });

  test('delegates to SettingsRepository.getSettings()', () async {
    const settings = TimerSettings(durationSeconds: 30);
    when(() => mockRepo.getSettings()).thenAnswer((_) async => settings);

    final result = await useCase();

    expect(result, equals(settings));
    verify(() => mockRepo.getSettings()).called(1);
  });
}
