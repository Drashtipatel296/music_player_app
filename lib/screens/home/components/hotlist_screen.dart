import 'package:flutter/material.dart';

class HorizontalContainer extends StatelessWidget {
  const HorizontalContainer({
    super.key, required this.img, required this.name,
  });

  final String img;
  final String name;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 15),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 150,
            width: 145,
            decoration: BoxDecoration(
              color: Colors.white,
              image: DecorationImage(
                fit: BoxFit.cover,
                image: AssetImage(img),
              ),
            ),
          ),
          const SizedBox(height: 8,),
          Text(name, style: const TextStyle(
              color: Colors.white, fontSize: 18, fontWeight: FontWeight.w500),),
        ],
      ),
    );
  }
}