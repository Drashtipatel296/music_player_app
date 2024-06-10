import 'package:assets_audio_player/assets_audio_player.dart';
import 'package:flutter/material.dart';

class AudioPlayerProvider with ChangeNotifier {
  final AssetsAudioPlayer _assetsAudioPlayer = AssetsAudioPlayer();
  double _sliderValue = 0.0;
  double _maxDuration = 0.0;

  double get sliderValue => _sliderValue;

  double get maxDuration => _maxDuration;

  AudioPlayerProvider() {
    _openAudio();
  }

  void _openAudio() async {
    await _assetsAudioPlayer.open(
      Audio("assets/audio/duniya.mp3"),
      autoStart: false,
      showNotification: true,
    );

    _assetsAudioPlayer.currentPosition.listen((Duration position) {
      if (_maxDuration != 0.0) {
        _sliderValue = position.inSeconds.toDouble();
        notifyListeners();
      }
    });

    _assetsAudioPlayer.current.listen((Playing? playing) {
      if (playing != null) {
        final duration = playing.audio.duration;
        _maxDuration = duration.inSeconds.toDouble();
        notifyListeners();
      }
    });
  }

  void play() {
    _assetsAudioPlayer.play();
  }

  void pause() {
    _assetsAudioPlayer.pause();
  }

  void seek(double seconds) {
    _assetsAudioPlayer.seek(Duration(seconds: seconds.toInt()));
  }

  @override
  void dispose() {
    _assetsAudioPlayer.dispose();
    super.dispose();
  }
}