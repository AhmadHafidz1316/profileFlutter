import 'package:flutter/material.dart';
import 'package:profile/pages/aboutMe_page.dart';
import 'package:profile/pages/school_page.dart';
import 'package:profile/pages/skill_page.dart';


class Bottomnavigation extends StatefulWidget {
  @override
  State<Bottomnavigation> createState() => _BottomnavigationState();
}

class _BottomnavigationState extends State<Bottomnavigation> {
  int _selectedIndex = 0;

  static List<Widget> _pages = <Widget>[
    AboutMePage(),
    SkillPage(),
    SchoolPage(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IndexedStack(
        index: _selectedIndex,
        children: _pages,
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'About Me',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.business),
            label: 'Skill',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.school),
            label: 'School',
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.blue[800],
        onTap: _onItemTapped,
      ),
    );
  }
}
