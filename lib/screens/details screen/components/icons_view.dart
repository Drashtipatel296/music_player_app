import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../../../provider/slider_provider.dart';

Row icons(AudioPlayerProvider audioProvider) {
  return Row(
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
  );
}