import 'package:flutter/material.dart';

class LiveScreen extends StatelessWidget {
  const LiveScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [
                  Colors.purple.shade300,
                  Colors.black,
                  Colors.black,
                  Colors.black,
                  Colors.black,
                ],
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
              ),
            ),
            child: Padding(
              padding: const EdgeInsets.only(top: 50, left: 10),
              child: Stack(
                children: [
                  const Row(
                    children: [
                      Text(
                        'Related',
                        style: TextStyle(
                            fontSize: 26,
                            fontWeight: FontWeight.bold,
                            color: Colors.white),
                      ),
                      Spacer(),
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
                        width: 10,
                      ),
                    ],
                  ),
                  Positioned(
                    top: 50,
                    child: Container(
                      height: 180,
                      width: 427,
                      decoration: BoxDecoration(
                        color: Colors.black,
                        image: const DecorationImage(
                          fit: BoxFit.cover ,
                          image: AssetImage('assets/img/live.webp'),
                        ),
                        borderRadius: BorderRadius.circular(8),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
