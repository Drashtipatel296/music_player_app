import 'package:flutter/cupertino.dart';
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
          sliverAppbar(context),
          SliverToBoxAdapter(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(height: 10,),
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
      floatingActionButton: Align(
        alignment: Alignment.bottomCenter,
        child: Container(
          alignment: Alignment.center,
          height: 65,
          width: 460,
          decoration: BoxDecoration(color: Colors.grey.shade900),
          child: ListTile(
            leading: Container(
              height: 55,
              width: 55,
              decoration: BoxDecoration(
                image: const DecorationImage(
                    image: AssetImage("assets/img/animal.jpg"),
                    fit: BoxFit.cover),
                borderRadius: BorderRadius.circular(7),
              ),
            ),
            title: const Text(
              "Animal",
              style: TextStyle(fontWeight: FontWeight.w700,color: Colors.white),
            ),
            subtitle: const Text("Arijit Singh",style: TextStyle(color: Colors.grey),),
            trailing: FittedBox(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  CupertinoButton(
                    onPressed: () {
                    },
                    padding: EdgeInsets.zero,
                    child: const Icon(Icons.play_circle_outline_outlined,size: 30,color: Colors.white,),
                  ),
                  CupertinoButton(
                    onPressed: () {
                    },
                    padding: EdgeInsets.zero,
                    child: const Icon(Icons.queue_music,size: 30,color: Colors.white,),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
      floatingActionButtonLocation:
      FloatingActionButtonLocation.miniCenterDocked,
    );
  }
}
