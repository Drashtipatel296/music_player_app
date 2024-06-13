import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:salomon_bottom_bar/salomon_bottom_bar.dart';
import '../../../provider/bottom_provider.dart';

Material bottomNavigation(BuildContext context) {
  return Material(
    elevation: 20,
    color: Colors.grey,
    child: SalomonBottomBar(
      curve: Curves.linear,
      itemShape: OutlineInputBorder(
        borderRadius: BorderRadius.circular(10),
      ),
      backgroundColor: Colors.black,
      currentIndex: Provider.of<BottomProvider>(context).bottomIndex,
      onTap: (value) {
        Provider.of<BottomProvider>(context, listen: false)
            .changeBottomIndex(value);
      },
      items: [
        SalomonBottomBarItem(
          icon: const Icon(
            Icons.music_note_rounded,
            color: Colors.white,
            size: 25,
          ),
          title: const Text(
            "Music",
            style: TextStyle(color: Colors.white),
          ),
          selectedColor: Colors.purple,
        ),
        SalomonBottomBarItem(
          icon: const Icon(
            Icons.search,
            color: Colors.white,
            size: 25,
          ),
          title: const Text(
            "Search",
            style: TextStyle(color: Colors.white),
          ),
          selectedColor: Colors.pink,
        ),
        SalomonBottomBarItem(
          icon: const Icon(
            Icons.live_tv,
            color: Colors.white,
            size: 25,
          ),
          title: const Text(
            "Live",
            style: TextStyle(color: Colors.white),
          ),
          selectedColor: Colors.orange,
        ),
        SalomonBottomBarItem(
          icon: const Icon(
            Icons.library_music_sharp,
            color: Colors.white,
            size: 25,
          ),
          title: const Text(
            "Library",
            style: TextStyle(color: Colors.white),
          ),
          selectedColor: Colors.teal,
        ),
      ],
    ),
  );
}
