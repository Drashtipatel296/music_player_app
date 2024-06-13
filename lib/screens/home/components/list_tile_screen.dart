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
        // height: 75,
        width: 55,
        decoration: BoxDecoration(
          image: DecorationImage(
            fit: BoxFit.cover,
            image: AssetImage(img),
          ),
          borderRadius: BorderRadius.circular(5),
        ),
      ),
      title: Text(
        title,
        style: const TextStyle(
            color: Colors.white, fontSize: 19, fontWeight: FontWeight.w500),
      ),
      subtitle: Text(
        subtitle,
        style: const TextStyle(fontSize: 14, color: Colors.grey),
      ),
      trailing: const Icon(
        Icons.download,
        color: Color(0xff00FFFF),
        size: 18,
      ),
    );
  }
}