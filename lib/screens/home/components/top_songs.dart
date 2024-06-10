import 'package:flutter/material.dart';

Padding topSongs() {
  return const Padding(
    padding: EdgeInsets.only(left: 15, right: 15, top: 10),
    child: Row(
      children: [
        Text(
          'Top 100 India',
          style: TextStyle(
              color: Colors.white,
              fontSize: 20,
              fontWeight: FontWeight.bold),
        ),
        Spacer(),
        Text(
          'MORE',
          style: TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.bold,
              color: Colors.grey),
        ),
      ],
    ),
  );
}