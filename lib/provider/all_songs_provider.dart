import 'package:flutter/material.dart';

class SongProvider extends ChangeNotifier {
  Map? allSong;

  void initialize(BuildContext context) {
    allSong = ModalRoute.of(context)!.settings.arguments as Map<String, String>;
  }
}