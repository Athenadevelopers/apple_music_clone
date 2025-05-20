import 'package:apple_music_clone/models/song.dart';

class AudioService {
  Song? _currentSong;
  bool _isPlaying = false;
  Duration _position = Duration.zero;

  Song? get currentSong => _currentSong;
  bool get isPlaying => _isPlaying;
  Duration get position => _position;

  void play(Song song) {
    _currentSong = song;
    _isPlaying = true;
    // In a real app, you would use a plugin like just_audio to play the song
  }

  void pause() {
    _isPlaying = false;
    // In a real app, you would pause the audio
  }

  void resume() {
    _isPlaying = true;
    // In a real app, you would resume the audio
  }

  void stop() {
    _isPlaying = false;
    _position = Duration.zero;
    // In a real app, you would stop the audio
  }

  void seekTo(Duration position) {
    _position = position;
    // In a real app, you would seek to the position
  }
}