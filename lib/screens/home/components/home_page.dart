import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'app_bar.dart';
import '../../../utils/hotlist.dart';
import '../../../utils/music_list.dart';
import '../../../provider/slider_provider.dart';
import '../../../utils/singer_list.dart';
import 'hotlist.dart';
import 'hotlist_screen.dart';
import 'list_tile_screen.dart';
import 'more_container.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => HomePageState();
}

class HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    final audioProvider = Provider.of<AudioPlayerProvider>(context);
    return Scaffold(
      backgroundColor: Colors.black,
      body: CustomScrollView(
        physics: const AlwaysScrollableScrollPhysics(),
        slivers: [
          sliverAppbar(),
          SliverToBoxAdapter(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                hotlist(),
                const SizedBox(height: 15),
                SizedBox(
                  height: 165,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: singer.length,
                    itemBuilder: (context, index) => HorizontalContainer(
                      img: singer[index]['img']!,
                      name: singer[index]['name']!,
                    ),
                  ),
                ),
                rowContainer(),
                const SizedBox(height: 10),
                SizedBox(
                  height: 390,
                  width: double.infinity,
                  child: GridView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: musicList.length,
                    shrinkWrap: true,
                    gridDelegate:
                        const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 4,
                      mainAxisExtent: 380,
                    ),
                    itemBuilder: (context, index) => InkWell(
                      onTap: () {
                        audioProvider.changeIndex(index);
                        audioProvider.openAudio();
                        Navigator.of(context)
                            .pushNamed('/detail', arguments: musicList[index]);
                      },
                      child: ListTileScreen(
                        title: musicList[index]['title'],
                        subtitle: musicList[index]['subtitle'],
                        img: "${musicList[index]['image']}",
                      ),
                    ),
                  ),
                ),
                hotlist(),
                const SizedBox(height: 15),
                SizedBox(
                  height: 175,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: hotSongsList.length,
                    itemBuilder: (context, index) => HorizontalContainer(
                      img: hotSongsList[index]['image'],
                      name: hotSongsList[index]['title'],
                    ),
                  ),
                ),
                rowContainer(),
                const SizedBox(height: 20),
                SizedBox(
                  height: 400,
                  width: double.infinity,
                  child: GridView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: musicList.length,
                    shrinkWrap: true,
                    gridDelegate:
                        const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 4,
                      mainAxisExtent: 380,
                    ),
                    itemBuilder: (context, index) => ListTileScreen(
                      title: musicList[index]['title'],
                      subtitle: musicList[index]['subtitle'],
                      img: "${musicList[index]['image']}",
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
