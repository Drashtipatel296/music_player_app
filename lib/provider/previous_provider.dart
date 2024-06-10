import 'package:flutter/material.dart';
import 'package:assets_audio_player/assets_audio_player.dart';
import '../model/audio_list.dart';

class MusicPlayerProvider with ChangeNotifier {
  final AssetsAudioPlayer _assetsAudioPlayer = AssetsAudioPlayer();
  List<Audio> _currentPlaylist = [];
  int _currentIndex = 0;

  MusicPlayerProvider() {
    setPlaylist(audioList);
  }

  void setPlaylist(List<Audio> playlist) {
    _currentPlaylist = playlist;
    _currentIndex = 0;
    _assetsAudioPlayer.open(
      Playlist(audios: _currentPlaylist, startIndex: _currentIndex),
      autoStart: false,
    );
    notifyListeners();
  }

  void playPreviousSong() {
    if (_currentIndex > 0) {
      _currentIndex--;
      _assetsAudioPlayer.playlistPlayAtIndex(_currentIndex);
      notifyListeners();
    }
  }

  // Other playback control methods can be added here

  List<Audio> get currentPlaylist => _currentPlaylist;
  int get currentIndex => _currentIndex;
  AssetsAudioPlayer get player => _assetsAudioPlayer;
}
