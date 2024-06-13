import 'package:flutter/material.dart';

Padding hotlist() {
  return const Padding(
    padding: EdgeInsets.only(left: 15, right: 15, top: 10),
    child: Row(
      children: [
        Text(
          'Recently Played',
          style: TextStyle(
              color: Colors.white,
              fontSize: 18,
              fontWeight: FontWeight.bold),
        ),
        Spacer(),
        Text(
          'MORE',
          style: TextStyle(
              fontSize: 13,
              fontWeight: FontWeight.bold,
              color: Colors.grey),
        ),
      ],
    ),
  );
}