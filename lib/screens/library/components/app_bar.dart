import 'package:flutter/material.dart';

AppBar app() {
  return AppBar(
    backgroundColor: Colors.black,
    leading: Image.asset(
      'assets/img/logo.png',
    ),
    title: const Text(
      'Search in Library',
      style: TextStyle(
          color: Colors.white, fontWeight: FontWeight.bold, fontSize: 20),
    ),
    actions: const [
      Icon(
        Icons.notifications_active,
        color: Colors.white,
        size: 25,
      ),
      SizedBox(
        width: 15,
      ),
      Icon(
        Icons.person,
        color: Colors.white,
        size: 25,
      ),
      SizedBox(
        width: 15,
      ),
    ],
  );
}