import 'dart:developer';

import 'package:audioplayers/audioplayers.dart';
import 'package:injectable/injectable.dart';
import '../../domain/audio/audio_service.dart';

@LazySingleton(as: AudioService)
class AudioServiceImpl implements AudioService {
  final AudioPlayer _player = AudioPlayer();

  @override
  Future<void> playTransitionSound() async {
    try {
      await _player.stop();
      await _player.play(AssetSource('audio/beep.wav'));
    } catch (e) {
      // Silently catch audio errors (common on web if not interacted first)
      log('Audio playback error: $e', name: 'AudioService');
    }
  }

  @override
  Future<void> stop() async {
    try {
      await _player.stop();
    } catch (e) {
      log('Audio stop error: $e', name: 'AudioService');
    }
  }
}
