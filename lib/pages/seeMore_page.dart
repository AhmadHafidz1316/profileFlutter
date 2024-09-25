import 'package:flutter/material.dart';
import 'package:profile/pages/aboutMe_page.dart';

class SeemorePage extends StatelessWidget {
  const SeemorePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Container(
                margin: EdgeInsets.symmetric(vertical: 10),
                padding: EdgeInsets.all(20),
                decoration: BoxDecoration(
                  color: Colors.amber,
                  borderRadius: BorderRadius.circular(20),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.3),
                      spreadRadius: 2,
                      blurRadius: 5,
                      offset: Offset(0, 3),
                    ),
                  ],
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Experience",
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                    SizedBox(height: 10),
                    Text(
                      "Frontend Developer Intern di PT 4Net Prima Solusi (6 Bulan), "
                      "Bertanggung jawab untuk mengembangkan antarmuka pengguna menggunakan React.js.",
                      style: TextStyle(color: Colors.white70),
                    ),
                  ],
                ),
              ),

              Container(
                margin: EdgeInsets.symmetric(vertical: 10),
                padding: EdgeInsets.all(20),
                decoration: BoxDecoration(
                  color: Colors.lightBlueAccent,
                  borderRadius: BorderRadius.circular(20),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.3),
                      spreadRadius: 2,
                      blurRadius: 5,
                      offset: Offset(0, 3),
                    ),
                  ],
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Achievements",
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                    SizedBox(height: 10),
                    Text(
                      "Juara 1 LKS Kota Bogor dalam bidang Pengembangan Desktop menggunakan .NET.",
                      style: TextStyle(color: Colors.white70),
                    ),
                  ],
                ),
              ),

              Container(
                margin: EdgeInsets.symmetric(vertical: 10),
                padding: EdgeInsets.all(20),
                decoration: BoxDecoration(
                  color: Colors.deepPurple,
                  borderRadius: BorderRadius.circular(20),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.3),
                      spreadRadius: 2,
                      blurRadius: 5,
                      offset: Offset(0, 3),
                    ),
                  ],
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Hobbies & Interests",
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                    SizedBox(height: 10),
                    // ListView for hobbies wrapped in SizedBox to avoid overflow
                    SizedBox(
                      height: 200, // Height for the list
                      child: ListView(
                        children: [
                          ListTile(
                            leading: Icon(Icons.android_sharp, color: Colors.white),
                            title: Text("Exploring New Languages", style: TextStyle(color: Colors.white)),
                            subtitle: Text(
                              "Exploring various new programming languages and understanding the latest technologies.",
                              style: TextStyle(color: Colors.white70),
                            ),
                          ),
                          ListTile(
                            leading: Icon(Icons.book_online_outlined, color: Colors.white),
                            title: Text("Reading Technology Books", style: TextStyle(color: Colors.white)),
                            subtitle: Text(
                              "Reading books or articles about technological developments and innovations in the IT world.",
                              style: TextStyle(color: Colors.white70),
                            ),
                          ),
                          ListTile(
                            leading: Icon(Icons.games_outlined, color: Colors.white),
                            title: Text("Playing Games", style: TextStyle(color: Colors.white)),
                            subtitle: Text(
                              "Playing games for entertainment while also understanding game mechanics and good design.",
                              style: TextStyle(color: Colors.white70),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
