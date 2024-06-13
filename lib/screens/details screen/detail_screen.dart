import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:music_player_app/utils/music_list.dart';
import 'package:provider/provider.dart';
import '../../provider/all_songs_provider.dart';
import '../../provider/slider_provider.dart';

class DetailScreen extends StatelessWidget {
  const DetailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final audioProvider = Provider.of<AudioPlayerProvider>(context);
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: const Color(0xff3B2361),
        iconTheme: const IconThemeData(color: Colors.white),
      ),
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Color(0xff3B2361),
              Color(0xff3B2361),
              Color(0xff3E2F70),
              // Color(0xff3E2F70),
            ],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 28),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Center(
                child: Container(
                  height: 350,
                  width: 320,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    image: DecorationImage(
                      fit: BoxFit.cover,
                      image: AssetImage(musicList[audioProvider.songIndex]['image']),
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
              ),
              const SizedBox(
                height: 50,
              ),
              Text(
                musicList[audioProvider.songIndex]['title'],
                style: const TextStyle(
                    color: Colors.white,
                    fontSize: 30,
                    letterSpacing: 1,
                    fontWeight: FontWeight.bold),
              ),
              Text(
                musicList[audioProvider.songIndex]['subtitle'],
                // songProvider.allSong!['subtitle']!,
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
                height: 10,
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
              SliderTheme(
                data: SliderTheme.of(context).copyWith(
                  trackHeight: 1.5,
                  thumbShape: const RoundSliderThumbShape(enabledThumbRadius: 6),
                ),
                child: Slider(
                  activeColor: Colors.white,
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
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Text('${audioProvider.sliderValue ~/ 60}:',style: TextStyle(color: Colors.white),),
                        Text((audioProvider.sliderValue.toInt() % 60)
                            .toString()
                            .padLeft(2, '0'),style: TextStyle(color: Colors.white),),
                      ],
                    ),
                    Row(
                      children: [
                        Text('${audioProvider.maxDuration ~/ 60}:',style: TextStyle(color: Colors.white),),
                        Text('${(audioProvider.maxDuration.toInt() % 60).toString()..padRight(2, '0')}',style: TextStyle(color: Colors.white),),
                      ],
                    ),
                  ],
                ),
              ),
              // const SizedBox(
              //   height: 10,
              // ),
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
                      audioProvider.previousAudio();
                    },
                    icon: const Icon(
                      Icons.skip_previous,
                      color: Colors.white,
                      size: 40,
                    ),
                  ),
                  IconButton(
                    onPressed: () {
                      audioProvider.togglePlayPause();
                    },
                    icon: Icon(
                      audioProvider.isPlaying
                          ? CupertinoIcons.pause
                          : CupertinoIcons.play_arrow_solid,
                      color: Colors.white,
                      size: 70,
                    ),
                  ),
                  IconButton(
                    onPressed: () {
                      audioProvider.nextAudio();
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
      ),
    );
  }
}
