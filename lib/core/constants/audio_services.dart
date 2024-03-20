import 'package:audioplayers/audioplayers.dart';

class AudioService {
  final AudioPlayer _audioPlayer = AudioPlayer();

  Future<void> playAudio(String audioAssetPath) async {
    await _audioPlayer.setSource(AssetSource(audioAssetPath));
    await _audioPlayer.resume(); // Start playing immediately
  }

  Future<void> pauseAudio() async {
    await _audioPlayer.pause();
  }

  Future<void> dispose() async {
    await _audioPlayer.stop(); // Stop and release resources
  }
}
