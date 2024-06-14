import 'package:flutter/material.dart';

import '../../../provider/slider_provider.dart';

Padding sliderText(AudioPlayerProvider audioProvider) {
  return Padding(
    padding: const EdgeInsets.symmetric(horizontal: 15),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          children: [
            Text('${audioProvider.sliderValue ~/ 60}:',style: const TextStyle(color: Colors.white),),
            Text((audioProvider.sliderValue.toInt() % 60)
                .toString()
                .padLeft(2, '0'),style: const TextStyle(color: Colors.white),),
          ],
        ),
        Row(
          children: [
            Text('${audioProvider.maxDuration ~/ 60}:',style: const TextStyle(color: Colors.white),),
            Text((audioProvider.maxDuration.toInt() % 60).toString()..padRight(2, '0'),style: const TextStyle(color: Colors.white),),
          ],
        ),
      ],
    ),
  );
}