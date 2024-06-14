import 'package:flutter/material.dart';

SliverAppBar sliverAppbar() {
  return SliverAppBar(
    // title: const Column(
    //   crossAxisAlignment: CrossAxisAlignment.start,
    //   children: [
    //     Text(
    //       'Hello Everyone',
    //       style: TextStyle(
    //           color: Colors.white, fontWeight: FontWeight.bold, fontSize: 16),
    //     ),
    //     Text(
    //       'Good Morning 👋',
    //       style: TextStyle(
    //           color: Colors.white, fontWeight: FontWeight.bold, fontSize: 12),
    //     ),
    //   ],
    // ),
    // leading: const Padding(
    //   padding: EdgeInsets.all(5),
    //   child: CircleAvatar(
    //     backgroundImage: AssetImage('assets/img/dp.jpeg'),
    //   ),
    // ),
    backgroundColor: Colors.transparent,
    expandedHeight: 200,
    flexibleSpace: FlexibleSpaceBar(
      // title: Text('Popular Songs',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 22),),
      background: Image.asset(
        'assets/img/d1.jpg',
        fit: BoxFit.cover,
      ),
    ),
  );
}
