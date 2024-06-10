import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../../provider/bottom_provider.dart';
import '../../provider/music_provider.dart';
import 'components/bottom_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  @override
  void initState() {
    Provider.of<MusicProvider>(context, listen: false).onMusic();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (_) => BottomProvider(),
      child: Consumer<BottomProvider>(
        builder: (context, provider, child) {
          return Scaffold(
            backgroundColor: Colors.black,
            body: provider.currentScreen,
            bottomNavigationBar: bottomNavigation(context),
          );
        },
      ),
    );
  }
}
