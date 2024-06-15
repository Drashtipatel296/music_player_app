import 'package:flutter/material.dart';

import '../screens/home/components/home_page.dart';
import '../screens/home/home_screen.dart';
import '../screens/library/library_screen.dart';
import '../screens/live/live_screen.dart';
import '../screens/search/search_screen.dart'; // Import HomeScreen

class BottomProvider with ChangeNotifier {
  int _bottomIndex = 0;

  int get bottomIndex => _bottomIndex;

  void changeBottomIndex(int index) {
    _bottomIndex = index;
    notifyListeners();
  }

  Widget get currentScreen {
    switch (_bottomIndex) {
      case 0:
        return const HomePage();
      case 1:
        return const SearchScreen();
      case 2:
        return const LiveScreen();
      case 3:
        return const LibraryScreen();
      default:
        return const HomeScreen();
    }
  }
}

