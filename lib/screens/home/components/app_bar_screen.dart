import 'package:flutter/material.dart';

AppBar appbar() {
  return AppBar(
    backgroundColor: Colors.black,
    leading: Image.asset(
      'assets/img/logo.png',
    ),
    title: const Text(
      'For You',
      style: TextStyle(
          color: Colors.white,
          fontWeight: FontWeight.bold,
          fontSize: 22),
    ),
    actions: const [
      Icon(
        Icons.notifications_active,
        color: Colors.white,
        size: 25,
      ),
      SizedBox(
        width: 20,
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