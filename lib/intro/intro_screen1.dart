import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class IntroScreen extends StatelessWidget {
  const IntroScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
          image: DecorationImage(
            opacity: 0.6,
            fit: BoxFit.cover,
            image: AssetImage('assets/img/intro1.jpeg'),
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.only(left: 25, top: 450, right: 25),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Life is',
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 45,
                    fontWeight: FontWeight.bold),
              ),
              Text(
                'a song, Love is',
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 45,
                    fontWeight: FontWeight.bold),
              ),
              Text(
                'the music',
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 45,
                    fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                "Lorem Ipsum is simply dummy text of the printing. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s.",
                style: TextStyle(color: Colors.white),
              ),
              SizedBox(
                height: 40,
              ),
              InkWell(
                onTap: () {
                  Navigator.of(context).pushNamed('/home');
                },
                child: Container(
                  height: 60,
                  width: 400,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(50),
                    gradient: LinearGradient(
                      colors: [
                        Color(0xffDF34B6),
                        Color(0xffCB2DD7),
                        Color(0xffA73DF9),
                      ],
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                    ),
                  ),
                  alignment: Alignment.center,
                  child: Text(
                    'Get Started',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
