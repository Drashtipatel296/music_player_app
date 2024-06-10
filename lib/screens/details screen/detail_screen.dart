import 'package:assets_audio_player/assets_audio_player.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../../provider/all_songs_provider.dart';
import '../../provider/music_provider.dart';
import '../../provider/previous_provider.dart';
import '../../provider/slider_provider.dart';

class DetailScreen extends StatelessWidget {
  const DetailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    AudioPlayerProvider audioProvider = Provider.of<AudioPlayerProvider>(context);
    // final musicProvider = Provider.of<MusicProvider>(context);
    final AssetsAudioPlayer assetsAudioPlayer = AssetsAudioPlayer();
    final songProvider = Provider.of<SongProvider>(context, listen: false);
    songProvider.initialize(context);

    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        iconTheme: const IconThemeData(color: Colors.white),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 28),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: 400,
              width: 390,
              decoration: BoxDecoration(
                color: Colors.white,
                image: DecorationImage(
                  fit: BoxFit.cover,
                  image: AssetImage(songProvider.allSong!['image']!),
                ),
                boxShadow: const [
                  BoxShadow(
                    blurRadius: 5,
                    spreadRadius: 0.5,
                    color: Colors.grey,
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 60,
            ),
            Text(
              songProvider.allSong!['title']!,
              style: const TextStyle(
                  color: Colors.white,
                  fontSize: 30,
                  letterSpacing: 1,
                  fontWeight: FontWeight.bold),
            ),
            Text(
              songProvider.allSong!['subtitle']!,
              style: const TextStyle(
                color: Colors.grey,
                fontSize: 18,
                letterSpacing: 1,
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            const Text(
              'View Lyrics >',
              style: TextStyle(
                color: Color(0xff00FFFF),
                fontSize: 19,
                letterSpacing: 1,
              ),
            ),
            const SizedBox(
              height: 40,
            ),
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Icon(
                  Icons.add_box_outlined,
                  color: Colors.grey,
                  size: 27,
                ),
                Icon(
                  Icons.multitrack_audio,
                  color: Colors.grey,
                  size: 27,
                ),
                Icon(
                  Icons.sim_card_download_outlined,
                  color: Colors.grey,
                  size: 27,
                ),
                Icon(
                  Icons.favorite_border,
                  color: Colors.grey,
                  size: 27,
                ),
                Icon(
                  Icons.more_vert,
                  color: Colors.grey,
                  size: 27,
                ),
              ],
            ),
            const SizedBox(
              height: 30,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Text('${audioProvider.sliderValue~/60}:',style: const TextStyle(color: Colors.white),),
                      Text((audioProvider.sliderValue.toInt()%60).toString().padLeft(2, '0'),style: TextStyle(color: Colors.white),),
                    ],
                  ),

                  Row(
                    children: [
                      Text('${audioProvider.maxDuration~/60}:',style: TextStyle(color: Colors.white),),
                      Text('${(audioProvider.maxDuration.toInt()%60)}',style: TextStyle(color: Colors.white),),
                    ],
                  ),
                  Slider(
                    value: audioProvider.sliderValue,
                    max: audioProvider.maxDuration > 0
                        ? audioProvider.maxDuration
                        : 1.0,
                    onChanged: (value) {
                      if (audioProvider.maxDuration > 0) {
                        audioProvider.seek(value);
                      }
                    },
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Icon(
                  Icons.menu,
                  color: Colors.grey,
                  size: 27,
                ),
                IconButton(
                  onPressed: () {
                    Provider.of<MusicProvider>(context).assetsAudioPlayer.previous();
                    Provider.of<MusicPlayerProvider>(context, listen: false).playPreviousSong();
                  },
                  icon: const Icon(
                    Icons.skip_previous,
                    color: Colors.white,
                    size: 40,
                  ),
                ),
                IconButton(
                  onPressed: () {
                    MusicProvider audioPlayerProvider =
                        Provider.of<MusicProvider>(context, listen: false);
                    audioPlayerProvider.startAndStop();
                    audioPlayerProvider.toggleStopStart();
                  },
                  icon: Icon(
                    Provider.of<MusicProvider>(context).isOn
                        ? Icons.play_circle_outline
                        : Icons.pause,
                    color: Colors.white,
                    size: 70,
                  ),
                ),
                IconButton(
                  onPressed: () {
                  },
                  icon: const Icon(
                    Icons.skip_next,
                    color: Colors.white,
                    size: 40,
                  ),
                ),
                const Icon(
                  Icons.queue_music_sharp,
                  color: Colors.grey,
                  size: 27,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
