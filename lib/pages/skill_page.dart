import 'package:flutter/material.dart';

class SkillPage extends StatefulWidget {
  @override
  State<SkillPage> createState() => _SkillPageState();
}

class _SkillPageState extends State<SkillPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Skill"),
      ),
      body: SingleChildScrollView(
        // Tambahkan SingleChildScrollView di sini
        child: Column(
          children: [
            Text(
              "Express JS",
              style: TextStyle(fontWeight: FontWeight.w700),
            ),
            Image.asset("assets/images/express.png"),
            SizedBox(
              height: 30,
            ),
            Text(
              "React JS",
              style: TextStyle(fontWeight: FontWeight.w700),
            ),
            Image.asset("assets/images/react.png"),
            SizedBox(
              height: 30,
            ),
            Text(
              "Ruby",
              style: TextStyle(fontWeight: FontWeight.w700),
            ),
            Image.asset("assets/images/ruby.png"),
            SizedBox(
              height: 30,
            ),
            Text(
              "Laravel",
              style: TextStyle(fontWeight: FontWeight.w700),
            ),
            Image.asset("assets/images/laravel.png"),
          ],
        ),
      ),
    );
  }
}
