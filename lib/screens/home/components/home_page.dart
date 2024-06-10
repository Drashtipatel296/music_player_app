import 'package:flutter/material.dart';

// home_screen.dart
import 'package:assets_audio_player/assets_audio_player.dart';
import 'package:provider/provider.dart';
import '../../../model/audio_list.dart';
import '../../../model/bollywood_list.dart';
import '../../../model/music_list.dart';
import '../../../model/top_songs_list.dart';
import '../../../provider/music_provider.dart';
import 'app_bar_screen.dart';
import 'bollywood.dart';
import 'hotlist.dart';
import 'hotlist_screen.dart';
import 'list_tile_screen.dart';
import 'more_container.dart';
import 'top_songs.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => HomePageState();
}

class HomePageState extends State<HomePage> {
  @override
  void initState() {
    Provider.of<MusicProvider>(context, listen: false).onMusic();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    MusicProvider musicProviderFalse = Provider.of<MusicProvider>(context, listen: false);
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: appbar(),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            rowContainer(),
            const SizedBox(height: 20),
            ListView.builder(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              itemCount: musicList.length,
              itemBuilder: (context, index) => InkWell(
                onTap: () {
                  Audio audio = audioList[index];
                  musicProviderFalse.assetsAudioPlayer.open(audio);
                  Navigator.of(context).pushNamed('/detail', arguments: musicList[index]);
                },
                child: ListTileScreen(
                  title: musicList[index]['title']!,
                  subtitle: musicList[index]['subtitle']!,
                  img: musicList[index]['image']!,
                ),
              ),
            ),
            hotlist(),
            const SizedBox(height: 15),
            SizedBox(
              height: 200,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: hotSongsList.length,
                itemBuilder: (context, index) => InkWell(
                  onTap: () {
                    Audio audio = audioList1[index];
                    musicProviderFalse.assetsAudioPlayer.open(audio);
                    Navigator.of(context).pushNamed('/detail', arguments: hotSongsList[index]);
                  },
                  child: HorizontalContainer(
                    img: hotSongsList[index]['image'],
                    name: hotSongsList[index]['title'],
                  ),
                ),
              ),
            ),
            bollywood(),
            const SizedBox(height: 15),
            ListView.builder(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              itemCount: topList.length,
              itemBuilder: (context, index) => InkWell(
                onTap: () {
                  Audio audio = audioList2[index];
                  musicProviderFalse.assetsAudioPlayer.open(audio);
                  Navigator.of(context).pushNamed('/detail', arguments: topList[index]);
                },
                child: ListTileScreen(
                  title: topList[index]['title']!,
                  subtitle: topList[index]['subtitle']!,
                  img: topList[index]['image']!,
                ),
              ),
            ),
            topSongs(),
            const SizedBox(height: 15),
            SizedBox(
              height: 200,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: hotSongsList.length,
                itemBuilder: (context, index) => InkWell(
                  onTap: () {
                    Audio audio = audioList3[index];
                    musicProviderFalse.assetsAudioPlayer.open(audio);
                    Navigator.of(context).pushNamed('/detail', arguments: hotSongsList[index]);
                  },
                  child: HorizontalContainer(
                    img: hotSongsList[index]['image'],
                    name: hotSongsList[index]['title'],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
