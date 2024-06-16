# Music Player App 

### 1. Set Up Your Flutter Environment
If you haven't already, set up Flutter on your machine:

- Download and install Flutter from [flutter.dev](https://flutter.dev/docs/get-started/install).
- Ensure you have an editor like Visual Studio Code or Android Studio set up with Flutter and Dart plugins.

### 2. Create a New Flutter Project
Open your terminal or command prompt and run:

```bash
flutter create audio_app
cd audio_app
```

### 3. Add Necessary Dependencies
You will need a package to handle audio playback. One of the most popular packages for this purpose is `assets_audio_player`. Add it to your `pubspec.yaml` file:

```yaml
dependencies:
  flutter:
    sdk: flutter
  cupertino_icons: ^1.0.6
  provider: ^6.1.2
  assets_audio_player: ^3.1.1
  salomon_bottom_bar: ^3.3.2
```

Run `flutter pub get` to install the new dependencies.

### 4. Implementing the User Interface

Open the `lib/main.dart` file and set up a basic UI. For simplicity, we will create a single screen with play, pause, and stop buttons

```dart
import 'package:flutter/material.dart';
import 'package:just_audio/just_audio.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (_) => AudioProvider(),
      child: MaterialApp(
        title: 'Audio App',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: AudioPlayerScreen(),
      ),
    );
  }
}

class AudioPlayerScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final audioProvider = Provider.of<AudioProvider>(context);

    return Scaffold(
      appBar: AppBar(
        title: Text('Audio App'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            ElevatedButton(
              onPressed: () => audioProvider.play(),
              child: Text('Play'),
            ),
            ElevatedButton(
              onPressed: () => audioProvider.pause(),
              child: Text('Pause'),
            ),
            ElevatedButton(
              onPressed: () => audioProvider.stop(),
              child: Text('Stop'),
            ),
          ],
        ),
      ),
    );
  }
}

class AudioProvider extends ChangeNotifier {
  final AudioPlayer _audioPlayer = AudioPlayer();

  void play() async {
    try {
      await _audioPlayer.setUrl('https://www.soundhelix.com/examples/mp3/SoundHelix-Song-1.mp3');
      _audioPlayer.play();
    } catch (e) {
      print("Error playing audio: $e");
    }
  }

  void pause() {
    _audioPlayer.pause();
  }

  void stop() {
    _audioPlayer.stop();
  }
}
```

### Example for Adding a Playlist

You can enhance the `AudioProvider` to manage a playlist:

```dart
class AudioProvider extends ChangeNotifier {
  final AudioPlayer _audioPlayer = AudioPlayer();
  final List<String> _playlist = [
    'https://www.soundhelix.com/examples/mp3/SoundHelix-Song-1.mp3',
    'https://www.soundhelix.com/examples/mp3/SoundHelix-Song-2.mp3',
    'https://www.soundhelix.com/examples/mp3/SoundHelix-Song-3.mp3',
  ];
  int _currentIndex = 0;

  void play() async {
    try {
      await _audioPlayer.setUrl(_playlist[_currentIndex]);
      _audioPlayer.play();
    } catch (e) {
      print("Error playing audio: $e");
    }
  }

  void pause() {
    _audioPlayer.pause();
  }

  void stop() {
    _audioPlayer.stop();
  }

  void next() {
    if (_currentIndex < _playlist.length - 1) {
      _currentIndex++;
      play();
    }
  }

  void previous() {
    if (_currentIndex > 0) {
      _currentIndex--;
      play();
    }
  }
}
```

Update the `AudioPlayerScreen` to include buttons for next and previous:

```dart
ElevatedButton(
  onPressed: () => audioProvider.previous(),
  child: Text('Previous'),
),
ElevatedButton(
  onPressed: () => audioProvider.next(),
  child: Text('Next'),
),
```

### ScreenShort

<p align='center'>
  <img src='https://github.com/Drashtipatel296/music_player_app/assets/143180636/e6b26b71-ccc8-414a-ba2d-fa30eda1e361' width=240>
  <img src='https://github.com/Drashtipatel296/music_player_app/assets/143180636/887cef16-ce6d-4e44-9a49-09fbc1124a46' width=240>
  <img src='https://github.com/Drashtipatel296/music_player_app/assets/143180636/5a3aeee3-1670-4193-bf0b-0f0fef4c6b45' width=240>
  <img src='https://github.com/Drashtipatel296/music_player_app/assets/143180636/ea1436d8-f121-41b2-b3a6-ef8d8c332d9c' width=240>
  <img src='https://github.com/Drashtipatel296/music_player_app/assets/143180636/40144fb4-2d12-4cd8-886c-eda33ffd3807' width=240>
  <img src='https://github.com/Drashtipatel296/music_player_app/assets/143180636/8d9b7459-889e-46c1-b728-c25c3720e183' width=240>
  <img src='https://github.com/Drashtipatel296/music_player_app/assets/143180636/39848d47-e448-48a2-83c2-bc37c51741f7' width=240>
</p>

### Video
https://github.com/Drashtipatel296/music_player_app/assets/143180636/7c95c200-2e18-4343-afe3-82afcf444cee




















