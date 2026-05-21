/// Contract for a countdown timer that emits tick events.
///
/// Implementations control the tick frequency. Consumers listen to [tick]
/// for each elapsed interval and call [start]/[stop] to control lifecycle.
abstract class TimerService {
  /// Emits an incrementing count each second (0, 1, 2, …).
  Stream<int> tick();

  /// Begins emitting ticks. Calling while already running restarts the stream.
  void start();

  /// Stops emitting ticks and cleans up resources.
  void stop();
}
