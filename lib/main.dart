import 'package:flutter/material.dart';
import 'package:music_player_app/provider/music_provider.dart';
import 'package:music_player_app/provider/slider_provider.dart';
import 'package:provider/provider.dart';

import 'provider/all_songs_provider.dart';
import 'provider/bottom_provider.dart';
import 'provider/previous_provider.dart';
import 'screens/details screen/detail_screen.dart';
import 'screens/home/home_screen.dart';
import 'screens/splash/splash_screen.dart';

void main() {
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (context) => MusicProvider(),
        ),
        ChangeNotifierProvider(
          create: (context) => BottomProvider(),
        ),
        ChangeNotifierProvider(
          create: (context) => SongProvider(),
        ),
        ChangeNotifierProvider(
          create: (context) => MusicPlayerProvider(),
        ),
        ChangeNotifierProvider(
          create: (context) => AudioPlayerProvider(),
        ),
      ],
      child: const MusicApp(),
    ),
  );
}

class MusicApp extends StatelessWidget {
  const MusicApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/home',
      routes: {
        '/': (context) => const SplashScreen(),
        '/home': (context) => const HomeScreen(),
        '/detail': (context) => const DetailScreen(),
      },
      // home: LiveScreen(),
    );
  }
}
