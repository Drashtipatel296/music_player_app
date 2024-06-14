import 'package:flutter/material.dart';

import 'components/app_bar.dart';
import 'components/container.dart';
import 'components/row.dart';

class LibraryScreen extends StatelessWidget {
  const LibraryScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black26,
      appBar: app(),
      body: Padding(
        padding: const EdgeInsets.all(12),
        child: Column(
          children: [
            firstRow(),
            const SizedBox(
              height: 30,
            ),
            container(),
            const SizedBox(
              height: 30,
            ),
            const ListTile(
              leading: Icon(
                Icons.music_note_rounded,
                color: Colors.white,
              ),
              title: Text(
                '  Favourite Songs',
                style: TextStyle(color: Colors.white, fontSize: 18),
              ),
              trailing: Icon(
                Icons.navigate_next,
                color: Colors.grey,
                size: 25,
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            const ListTile(
              leading: Icon(
                Icons.playlist_add_sharp,
                color: Colors.white,
              ),
              title: Text(
                '  Favourite Playlists',
                style: TextStyle(color: Colors.white, fontSize: 18),
              ),
              trailing: Icon(
                Icons.navigate_next,
                color: Colors.grey,
                size: 25,
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            const ListTile(
              leading: Icon(
                Icons.playlist_add_circle_outlined,
                color: Colors.white,
              ),
              title: Text(
                '  My Playlists',
                style: TextStyle(color: Colors.white, fontSize: 18),
              ),
              trailing: Icon(
                Icons.navigate_next,
                color: Colors.grey,
                size: 25,
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            const ListTile(
              leading: Icon(
                Icons.album,
                color: Colors.white,
              ),
              title: Text(
                '  Favourite Albums',
                style: TextStyle(color: Colors.white, fontSize: 18),
              ),
              trailing: Icon(
                Icons.navigate_next,
                color: Colors.grey,
                size: 25,
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            const ListTile(
              leading: Icon(
                Icons.video_collection_sharp,
                color: Colors.white,
              ),
              title: Text(
                '  Favourite Videos',
                style: TextStyle(color: Colors.white, fontSize: 18),
              ),
              trailing: Icon(
                Icons.navigate_next,
                color: Colors.grey,
                size: 25,
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            const ListTile(
              leading: Icon(
                Icons.article_rounded,
                color: Colors.white,
              ),
              title: Text(
                '  Followed Artists',
                style: TextStyle(color: Colors.white, fontSize: 18),
              ),
              trailing: Icon(
                Icons.navigate_next,
                color: Colors.grey,
                size: 25,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
