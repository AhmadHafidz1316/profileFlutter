import 'package:flutter/material.dart';


class SchoolPage extends StatelessWidget {
   @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text("Ini adalah Sekolah Page"),
        ),
      ),
    );
  }
}