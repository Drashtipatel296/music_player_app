import 'package:flutter/material.dart';

class ListTileScreen extends StatelessWidget {
  const ListTileScreen({
    super.key,
    required this.img,
    required this.title,
    required this.subtitle,
  });

  final String img;
  final String title;
  final String subtitle;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Container(
        height: 80,
        width: 65,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage(img),
          ),
          borderRadius: BorderRadius.circular(5),
        ),
      ),
      title: Text(
        title,
        style: const TextStyle(
            color: Colors.white, fontSize: 20, fontWeight: FontWeight.w500),
      ),
      subtitle: Text(
        subtitle,
        style: const TextStyle(fontSize: 18, color: Colors.grey),
      ),
      trailing: const Icon(
        Icons.download,
        color: Color(0xff00FFFF),
        size: 22,
      ),
    );
  }
}