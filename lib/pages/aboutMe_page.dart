import 'package:flutter/material.dart';
import 'package:profile/pages/seeMore_page.dart';

class AboutMePage extends StatelessWidget {
  const AboutMePage(
      {super.key,
      required this.username,
      required this.sekolah,
      required this.role,
      required this.deskripsi});

  final String username;
  final String sekolah;
  final String role;
  final String deskripsi;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
                    username,  // Menggunakan variabel username
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.w700),
                  ),
                  Text(role),  // Menggunakan variabel role
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
                            Text(deskripsi),  // Menggunakan variabel deskripsi
                            SizedBox(height: 15),
                            Text(
                              "Education",
                              style: TextStyle(fontWeight: FontWeight.w500),
                            ),
                            SizedBox(height: 8),
                            Text(sekolah),  // Menggunakan variabel sekolah
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
            child: Text('see more'),
          ),
        ],
      ),
    );
  }
}
