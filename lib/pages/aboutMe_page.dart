import 'package:flutter/material.dart';
import 'package:profile/pages/seeMore_page.dart';

class AboutMePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   title: Text("About Me"),
      // ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Stack(
            clipBehavior: Clip.none,
            alignment: Alignment.topCenter,
            children: [
              Image.asset(
                "assets/images/moon.jpg",
                width: double.infinity,
                fit: BoxFit.cover,
              ),
              Positioned(
                top: 120,
                child: CircleAvatar(
                  backgroundImage: AssetImage("assets/images/profile.jpg"),
                  radius: 100,
                ),
              ),
            ],
          ),
          Container(
            margin: EdgeInsets.only(top: 80),
            width: double.infinity,
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                children: [
                  Text(
                    "Ahmad Hafidz Rino Putra",
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.w700),
                  ),
                  Text("Fullstack Developer"),
                  SizedBox(height: 35),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("About Me",
                                style: TextStyle(fontWeight: FontWeight.w500)),
                            SizedBox(height: 8),
                            Text(
                                "I am a passionate developer who is always eager to learn and grow in the world of technology, and I am a fullstack developer proficient in programming languages such as JavaScript, Dart, and PHP, along with frameworks like React, Flutter, and Node.js, to build innovative and efficient applications."),
                            SizedBox(height: 15),
                            Text(
                              "Education",
                              style: TextStyle(fontWeight: FontWeight.w500),
                            ),
                            SizedBox(height: 8),
                            Text("Wikrama Vocational HighSchool"),
                          ],
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
          ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => SeemorePage()),
                );
              },
              child: Text('see more'))
        ],
      ),
    );
  }
}
