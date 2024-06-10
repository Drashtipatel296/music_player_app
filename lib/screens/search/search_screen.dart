import 'package:assets_audio_player/assets_audio_player.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../model/audio_list.dart';
import '../../model/bollywood_list.dart';
import '../../model/top_songs_list.dart';
import '../../provider/music_provider.dart';
import '../../utils/singer_list.dart';
import '../home/components/bollywood.dart';
import '../home/components/hotlist.dart';
import '../home/components/hotlist_screen.dart';
import '../home/components/list_tile_screen.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({super.key});

  @override
  Widget build(BuildContext context) {
    MusicProvider musicProviderFalse = Provider.of<MusicProvider>(context, listen: false);
    return Scaffold(
      backgroundColor: Colors.black26,
      appBar: AppBar(
        backgroundColor: Colors.black,
        leading: Image.asset(
          'assets/img/logo.png',
        ),
        title: const Text(
          'Related',
          style: TextStyle(
              color: Colors.white, fontWeight: FontWeight.bold, fontSize: 22),
        ),
        actions: const [
          Icon(
            Icons.notifications_active,
            color: Colors.white,
            size: 25,
          ),
          SizedBox(
            width: 15,
          ),
          Icon(
            Icons.person,
            color: Colors.white,
            size: 25,
          ),
          SizedBox(
            width: 10,
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Row(
                children: [
                  Text(
                    'Host Ranking',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 28,
                        fontWeight: FontWeight.bold),
                  ),
                  Spacer(),
                  Text(
                    'MORE',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 15,
                        fontWeight: FontWeight.bold),
                  ),
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              SizedBox(
                height: 120, // Constrain the height for the horizontal list
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: singer.length,
                  itemBuilder: (context, index) => allSinger(
                    singer[index]['img']!,
                    singer[index]['name']!,
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
            ],
          ),
        ),
      ),
    );
  }

  Column allSinger(String img, String name) {
    return Column(
      children: [
        Container(
          margin: EdgeInsets.symmetric(horizontal: 23),
          height: 80,
          width: 80,
          decoration: BoxDecoration(
            color: Colors.white,
            shape: BoxShape.circle,
            image: DecorationImage(
              fit: BoxFit.cover,
              image: AssetImage(img),
            ),
          ),
        ),
        SizedBox(
          height: 10,
        ),
        Text(
          name,
          style: TextStyle(
              color: Colors.white, fontWeight: FontWeight.w500, fontSize: 17),
        ),
      ],
    );
  }
}
