import 'package:assets_audio_player/assets_audio_player.dart';
import 'package:flutter/material.dart';

import '../model/audio_list.dart';

class MusicProvider extends ChangeNotifier{
  AssetsAudioPlayer assetsAudioPlayer = AssetsAudioPlayer();
  bool _isOn = false;

  void onMusic(){
    assetsAudioPlayer = AssetsAudioPlayer();
    assetsAudioPlayer.open(Playlist(audios: audioList),autoStart: false,showNotification: true);
    notifyListeners();
  }

  bool get isOn => _isOn;

  void startAndStop(){
    if(_isOn==false){
      _isOn = true;
    }
    else{
      _isOn = false;
    }
    notifyListeners();
  }

  void toggleStopStart(){
    if(_isOn){
      assetsAudioPlayer.pause();
    }
    else{
      assetsAudioPlayer.play();
    }
  }

  @override
  void dispose() {
    assetsAudioPlayer.dispose();
    super.dispose();
  }
}