import 'package:flutter/material.dart';
import 'package:profile/pages/aboutMe_page.dart';
import 'package:profile/bottomNavigation.dart';
import 'package:profile/pages/skill_page.dart';
import 'package:profile/pages/school_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Profile',
      home: Bottomnavigation(),
      debugShowCheckedModeBanner: false,
    );
  }
}


