import 'package:flutter/material.dart';

class LibraryScreen extends StatelessWidget {
  const LibraryScreen({super.key});

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
          'Search in Library',
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
      body: Padding(
        padding: const EdgeInsets.all(12),
        child: Column(
          children: [
            const Row(
              children: [
                Text(
                  'Downloads & Local Music',
                  style: TextStyle(color: Colors.white,fontSize: 28,fontWeight: FontWeight.bold),
                ),
                Spacer(),
                Icon(Icons.navigate_next,color: Colors.white,size: 40,),
              ],
            ),
            const SizedBox(height: 30,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  height: 47,
                  width: 190,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(50),
                  ),
                  alignment: Alignment.center,
                  child: Text('Favourite Music',style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 20),),
                ),
                Container(
                  height: 47,
                  width: 170,
                  decoration: BoxDecoration(
                    color: Colors.grey.shade800,
                    borderRadius: BorderRadius.circular(50),
                  ),
                  alignment: Alignment.center,
                  child: const Text('My Prodcasts',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 20),),
                ),
              ],
            ),
            const SizedBox(height: 30,),
            const ListTile(
              leading: Icon(Icons.music_note_rounded),
              title: Text('Favourite Songs',style: TextStyle(color: Colors.white,fontSize: 25),),
              trailing: Icon(Icons.navigate_next,color: Colors.grey,size: 40,),
            ),
            const SizedBox(height: 20,),
            const ListTile(
              leading: Icon(Icons.playlist_add_sharp),
              title: Text('Favourite Playlists',style: TextStyle(color: Colors.white,fontSize: 25),),
              trailing: Icon(Icons.navigate_next,color: Colors.grey,size: 40,),
            ),
            const SizedBox(height: 20,),
            const ListTile(
              leading: Icon(Icons.playlist_add_circle_outlined),
              title: Text('My Playlists',style: TextStyle(color: Colors.white,fontSize: 25),),
              trailing: Icon(Icons.navigate_next,color: Colors.grey,size: 40,),
            ),
            const SizedBox(height: 20,),
            const ListTile(
              leading: Icon(Icons.album),
              title: Text('Favourite Albums',style: TextStyle(color: Colors.white,fontSize: 25),),
              trailing: Icon(Icons.navigate_next,color: Colors.grey,size: 40,),
            ),
            const SizedBox(height: 20,),
            const ListTile(
              leading: Icon(Icons.video_collection_sharp),
              title: Text('Favourite Videos',style: TextStyle(color: Colors.white,fontSize: 25),),
              trailing: Icon(Icons.navigate_next,color: Colors.grey,size: 40,),
            ),
            const SizedBox(height: 20,),
            const ListTile(
              leading: Icon(Icons.article_rounded),
              title: Text('Followed Artists',style: TextStyle(color: Colors.white,fontSize: 25),),
              trailing: Icon(Icons.navigate_next,color: Colors.grey,size: 40,),
            ),
          ],
        ),
      ),
    );
  }
}
