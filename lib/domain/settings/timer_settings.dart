import 'package:freezed_annotation/freezed_annotation.dart';

part 'timer_settings.freezed.dart';

@freezed
class TimerSettings with _$TimerSettings {
  const factory TimerSettings({
    required int durationSeconds,
  }) = _TimerSettings;
}
