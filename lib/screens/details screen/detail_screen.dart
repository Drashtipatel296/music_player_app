import 'package:flutter/material.dart';
import 'package:music_player_app/utils/music_list.dart';
import 'package:provider/provider.dart';
import '../../provider/slider_provider.dart';
import 'components/icons.dart';
import 'components/icons_view.dart';
import 'components/slider_text.dart';
import 'components/slider_view.dart';

class DetailScreen extends StatelessWidget {
  const DetailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final audioProvider = Provider.of<AudioPlayerProvider>(context);
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        iconTheme: const IconThemeData(color: Colors.white),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 28),
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
                ),
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            Text(
              musicList[audioProvider.songIndex]['title'],
              style: const TextStyle(
                  color: Colors.white,
                  fontSize: 30,
                  letterSpacing: 1,
                  fontWeight: FontWeight.bold),
            ),
            // const SizedBox(
            //   height: 5,
            // ),
            Text(
              musicList[audioProvider.songIndex]['subtitle'],
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
            showIcons(),
            const SizedBox(
              height: 30,
            ),
            slider(context, audioProvider),
            sliderText(audioProvider),
            const SizedBox(
              height: 15,
            ),
            icons(audioProvider),
          ],
        ),
      ),
    );
  }
}
