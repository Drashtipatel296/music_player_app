import 'package:flutter/material.dart';

class LiveScreen extends StatelessWidget {
  const LiveScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Column(
        children: [
          Container(
            height: 300,
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [
                  Colors.purple.shade900,
                  Colors.blueAccent.shade100,
                  Colors.black,
                  Colors.black,
                ],
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
              ),
            ),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 50),
              child: Column(
                children: [
                  const Row(
                    children: [
                      Text(
                        'Related',
                        style: TextStyle(
                            fontSize: 24,
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
                        width: 15,
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Container(
                    height: 70,
                    width: 427,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        fit: BoxFit.cover,
                        image: AssetImage('assets/img/2.jpeg'),
                      ),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(8),
                      child: Row(
                        children: [
                          Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Text(
                                '     Start a live party now',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold),
                              ),
                              Text(
                                'Start a live party now',
                                style:
                                    TextStyle(color: Colors.grey, fontSize: 14),
                              ),
                            ],
                          ),
                          Spacer(),
                          Text(
                            'GO',
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 20,
                                fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Row(
                    children: [
                      Text(
                        'Recent',
                        style:
                            TextStyle(color: Color(0xff00FFFF), fontSize: 20),
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      Text(
                        'Following',
                        style: TextStyle(color: Colors.white, fontSize: 20),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
          SizedBox(height: 220,),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              textAlign: TextAlign.center,
              'Oops, There are no live rooms at the moment. Please come back later.',
              style: TextStyle(color: Colors.grey,fontSize: 19),
            ),
          ),
          SizedBox(height: 30,),
          Container(
            height: 40,
            width: 150,
            decoration: BoxDecoration(
              color: Color(0xff00FFFF),
              borderRadius: BorderRadius.circular(30),
            ),
            alignment: Alignment.center,
            child: Text('Refresh',style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),),
          ),
        ],
      ),
    );
  }
}
