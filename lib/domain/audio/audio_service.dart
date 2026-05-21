/// Contract for playing audio cues during workouts.
///
/// Implementations decide *how* audio is played (audioplayers, web audio,
/// etc.). Consumers depend only on this abstraction.
abstract class AudioService {
  /// Plays a short beep/chime to signal an exercise transition.
  Future<void> playTransitionSound();
}
