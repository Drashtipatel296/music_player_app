import 'package:flutter/material.dart';

Padding rowContainer() {
  return const Padding(
    padding: EdgeInsets.only(left: 15,right: 15,top: 10),
    child: Row(
      children: [
        Text(
          'Made for you',
          style: TextStyle(
              color: Colors.white,
              fontSize: 18,
              fontWeight: FontWeight.bold),
        ),
        Spacer(),
        Text(
          'MORE',
          style: TextStyle(fontSize: 13, fontWeight: FontWeight.bold,color: Colors.grey),
        ),
      ],
    ),
  );
}