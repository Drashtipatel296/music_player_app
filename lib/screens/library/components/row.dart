import 'package:flutter/material.dart';

Row firstRow() {
  return const Row(
    children: [
      Text(
        'Downloads & Local Music',
        style: TextStyle(
            color: Colors.white,
            fontSize: 20,
            fontWeight: FontWeight.bold),
      ),
      Spacer(),
      Icon(
        Icons.navigate_next,
        color: Colors.white,
        size: 30,
      ),
    ],
  );
}