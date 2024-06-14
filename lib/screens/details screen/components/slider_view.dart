import 'package:flutter/material.dart';
import '../../../provider/slider_provider.dart';

SliderTheme slider(BuildContext context, AudioPlayerProvider audioProvider) {
  return SliderTheme(
    data: SliderTheme.of(context).copyWith(
      trackHeight: 1.5,
      thumbShape: const RoundSliderThumbShape(enabledThumbRadius: 6),
    ),
    child: Slider(
      activeColor: Colors.white,
      value: audioProvider.sliderValue,
      max: audioProvider.maxDuration > 0
          ? audioProvider.maxDuration
          : 1.0,
      onChanged: (value) {
        if (audioProvider.maxDuration > 0) {
          audioProvider.seek(value);
        }
      },
    ),
  );
}