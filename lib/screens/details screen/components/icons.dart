import 'package:flutter/material.dart';

Row showIcons() {
  return const Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: [
      Icon(
        Icons.add_box_outlined,
        color: Colors.grey,
        size: 27,
      ),
      Icon(
        Icons.multitrack_audio,
        color: Colors.grey,
        size: 27,
      ),
      Icon(
        Icons.sim_card_download_outlined,
        color: Colors.grey,
        size: 27,
      ),
      Icon(
        Icons.favorite_border,
        color: Colors.grey,
        size: 27,
      ),
      Icon(
        Icons.more_vert,
        color: Colors.grey,
        size: 27,
      ),
    ],
  );
}