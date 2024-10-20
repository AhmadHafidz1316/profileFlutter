import 'package:flutter/material.dart';
import 'package:profile/pages/aboutMe_page.dart';
import 'package:profile/pages/school_page.dart';
import 'package:profile/pages/skill_page.dart';

class Bottomnavigation extends StatefulWidget {
  final String username;
  final String sekolah;
  final String role;
  final String deskripsi;

  const Bottomnavigation({
    super.key,
    required this.username,
    required this.sekolah,
    required this.role,
    required this.deskripsi,
  });

  @override
  State<Bottomnavigation> createState() => _BottomnavigationState();
}

class _BottomnavigationState extends State<Bottomnavigation> {
  int _selectedIndex = 0;

  late final List<Widget> _pages;

  @override
  void initState() {
    super.initState();
    // Inisialisasi _pages dengan data dari widget
    _pages = [
      AboutMePage(
        username: widget.username,
        sekolah: widget.sekolah,
        role: widget.role,
        deskripsi: widget.deskripsi,
      ),
       SkillPage(),
       SchoolPage(),
    ];
  }

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
