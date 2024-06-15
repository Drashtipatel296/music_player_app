import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:music_player_app/utils/timer.dart';

SliverAppBar sliverAppbar(BuildContext context) {
  return SliverAppBar(
    backgroundColor: Colors.black,
    elevation: 0,
    surfaceTintColor: Colors.black,
    foregroundColor: Colors.red,
    title: Text(
      "Good ${greetings()} 👋",
      style: const TextStyle(
        color: Colors.white,
        fontSize: 22,
        fontWeight: FontWeight.bold,
      ),
    ),
    expandedHeight: 90.0,
    floating: true,
    toolbarHeight: 150,
    pinned: true,
    bottom: PreferredSize(
      preferredSize: Size(MediaQuery.of(context).size.width, 40),
      child: Padding(
        padding: const EdgeInsets.only(left: 15),
        child: Row(
          children: [
            Container(
              height: 40,
              width: 100,
              decoration: BoxDecoration(color: Colors.grey.shade900,
              borderRadius: BorderRadius.circular(10),
              ),
              alignment: Alignment.center,
              child: const Text('For You',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 17,color: Colors.white),),
            ),
            Container(
              height: 35,
              width: 100,
              decoration: BoxDecoration(color: Colors.black,
                borderRadius: BorderRadius.circular(10),
              ),
              alignment: Alignment.center,
              child: const Text('Trending',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 17,color: Colors.grey),),
            ),
          ],
        ),
      ),
    ),
    flexibleSpace: FlexibleSpaceBar(
      background: Container(
        color: Colors.black,
        height: 100,
      ),
    ),
    actions: [
      CupertinoButton(
        padding: EdgeInsets.zero,
        onPressed: () {},
        child: const Icon(
          Icons.notifications_active,
          color: Colors.white,
          size: 28,
        ),
      ),
      CupertinoButton(
        padding: EdgeInsets.zero,
        onPressed: () {},
        child: const Icon(
          Icons.person,
          color: Colors.white,
          size: 28,
        ),
      ),
    ],
    scrolledUnderElevation: 10,
    automaticallyImplyLeading: false,
  );
}
