import 'package:flutter/material.dart';
import '../../utils/hotlist.dart';
import '../../utils/music_list.dart';
import '../../utils/singer_list.dart';
import '../home/components/hotlist.dart';
import '../home/components/hotlist_screen.dart';
import '../home/components/list_tile_screen.dart';
import '../home/components/more_container.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black26,
      appBar: AppBar(
        backgroundColor: Colors.black,
        leading: Image.asset(
          'assets/img/logo.png',
        ),
        title: const Text(
          'Search',
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
            width: 15,
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(10),
          child: Column(
            children: [
              Center(
                child: Container(
                  height: 45,
                  width: 400,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(40),
                    color: Colors.white,
                  ),
                  alignment: Alignment.center,
                  child: TextField(
                    cursorColor: Colors.black,
                    decoration: InputDecoration(
                      prefixIcon: Icon(Icons.search,color: Colors.black,),
                      hintText: 'Search your favourite singer',
                      border: InputBorder.none,
                    ),
                  ),
                ),
              ),
              SizedBox(height: 15,),
              const Row(
                children: [
                  Text(
                    'Host Ranking',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                        fontWeight: FontWeight.bold),
                  ),
                  Spacer(),
                  Text(
                    'MORE',
                    style: TextStyle(
                        color: Colors.grey,
                        fontSize: 13,
                        fontWeight: FontWeight.bold),
                  ),
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              SizedBox(
                height: 120,
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
              const SizedBox(height: 20),
              SizedBox(
                height: 160,
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
              const SizedBox(height: 10),
              SizedBox(
                height: 390,
                width: double.infinity,
                child: ListView.builder(
                  physics: const NeverScrollableScrollPhysics(),
                  scrollDirection: Axis.vertical,
                  itemCount: musicList.length,
                  shrinkWrap: true,
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
      ),
    );
  }

  Column allSinger(String img, String name) {
    return Column(
      children: [
        Container(
          margin: EdgeInsets.symmetric(horizontal: 15),
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
              color: Colors.white, fontWeight: FontWeight.w500, fontSize: 15),
        ),
      ],
    );
  }
}
