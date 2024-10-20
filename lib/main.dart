import 'package:flutter/material.dart';
import 'package:profile/pages/aboutMe_page.dart';
import 'package:profile/bottomNavigation.dart';
import 'package:profile/pages/auth/login_page.dart';
import 'package:profile/pages/auth/login_page2.dart'; // Import LoginPage

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Profile',
      debugShowCheckedModeBanner: false,
      home: LoginPage2(), // Tampilkan LoginPage sebagai halaman awal
    );
  }
}
