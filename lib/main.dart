import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Profile',
      home: BottomNavigationBarExample(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class BottomNavigationBarExample extends StatefulWidget {
  const BottomNavigationBarExample({super.key});

  @override
  State<BottomNavigationBarExample> createState() =>
      _BottomNavigationBarExampleState();
}

class _BottomNavigationBarExampleState
    extends State<BottomNavigationBarExample> {
  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    String message;
    if (index == 0) {
      message = "Masih Percobaan masuk WA";
    } else if (index == 1) {
      message = "Masih Percobaan masuk Instagram";
    } else {
      message = "Masih Percobaan masuk GitHub";
    }

    _showAlertDialog(message);
  }

  void _showAlertDialog(String message) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text('Informasi'),
          content: Text(message),
          actions: <Widget>[
            TextButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: Text('OK'),
            ),
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "My Profile",
          style: TextStyle(fontWeight: FontWeight.w800),
        ),
      ),
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
                  backgroundImage: AssetImage("assets/images/h.jpeg"),
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
                                "Perkenalkan nama saya Ahmad Hafidz Rino, Saya adalah seorang developer sekaligus seorang manusia biasa"),
                            SizedBox(height: 15),
                            Text(
                              "Education",
                              style: TextStyle(fontWeight: FontWeight.w500),
                            ),
                            SizedBox(height: 8),
                            Text("Wikrama Vocational HighSchool")
                          ],
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'WhatsApp',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.business),
            label: 'Instagram',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.school),
            label: 'Github',
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.amber[800],
        onTap: (index) {
          setState(() {
            _selectedIndex = index;
          });
          _onItemTapped(index);
        },
      ),
    );
  }
}
