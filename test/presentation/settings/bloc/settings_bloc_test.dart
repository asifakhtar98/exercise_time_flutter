import 'package:bloc_test/bloc_test.dart';
import 'package:exercise_time/domain/settings/timer_settings.dart';
import 'package:exercise_time/domain/usecases/get_timer_settings.dart';
import 'package:exercise_time/domain/usecases/save_timer_settings.dart';
import 'package:exercise_time/presentation/settings/bloc/settings_bloc.dart';
import 'package:exercise_time/presentation/settings/bloc/settings_event.dart';
import 'package:exercise_time/presentation/settings/bloc/settings_state.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';

class MockGetTimerSettings extends Mock implements GetTimerSettings {}

class MockSaveTimerSettings extends Mock implements SaveTimerSettings {}

void main() {
  late MockGetTimerSettings mockGetSettings;
  late MockSaveTimerSettings mockSaveSettings;

  setUp(() {
    mockGetSettings = MockGetTimerSettings();
    mockSaveSettings = MockSaveTimerSettings();
    registerFallbackValue(const TimerSettings(durationSeconds: 0));
  });

  group('SettingsBloc', () {
    blocTest<SettingsBloc, SettingsState>(
      'emits [loading, loaded] when LoadSettings is added',
      build: () {
        when(
          () => mockGetSettings(),
        ).thenAnswer((_) async => const TimerSettings(durationSeconds: 15));
        return SettingsBloc(mockGetSettings, mockSaveSettings);
      },
      act: (bloc) => bloc.add(const SettingsEvent.loadSettings()),
      expect: () => [
        const SettingsState.loading(),
        const SettingsState.loaded(
          settings: TimerSettings(durationSeconds: 15),
        ),
      ],
    );

    blocTest<SettingsBloc, SettingsState>(
      'emits [loading, error] when LoadSettings fails',
      build: () {
        when(() => mockGetSettings()).thenThrow(Exception('disk error'));
        return SettingsBloc(mockGetSettings, mockSaveSettings);
      },
      act: (bloc) => bloc.add(const SettingsEvent.loadSettings()),
      expect: () => [const SettingsState.loading(), isA<SettingsError>()],
    );

    blocTest<SettingsBloc, SettingsState>(
      'emits [loaded] with new duration and saves when UpdateDuration is added',
      build: () {
        when(() => mockSaveSettings(any())).thenAnswer((_) async {});
        return SettingsBloc(mockGetSettings, mockSaveSettings);
      },
      seed: () => const SettingsState.loaded(
        settings: TimerSettings(durationSeconds: 15),
      ),
      act: (bloc) => bloc.add(const SettingsEvent.updateDuration(30)),
      expect: () => [
        const SettingsState.loaded(
          settings: TimerSettings(durationSeconds: 30),
        ),
      ],
      verify: (_) {
        verify(
          () => mockSaveSettings(const TimerSettings(durationSeconds: 30)),
        ).called(1);
      },
    );

    blocTest<SettingsBloc, SettingsState>(
      'ignores UpdateDuration when not in loaded state',
      build: () {
        return SettingsBloc(mockGetSettings, mockSaveSettings);
      },
      act: (bloc) => bloc.add(const SettingsEvent.updateDuration(30)),
      expect: () => <SettingsState>[],
    );
  });
}
