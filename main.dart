import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: Increment());
  }
}

// Untuk Kolom dan Baris

class Kolom extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(
        title: Text("Ini untuk belajar Kolom dan Baris atau Column & Row"),
        backgroundColor: const Color.fromARGB(255, 4, 163, 107),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text("Test1"),
          Text("Test2"),
          Text("Test3"),
          Row(
            children: [Text("Test4"), Text("Test5"), Text("Test6")],
          )
        ],
      ),
    ));
  }
}

// Untuk Kontainer

class Kontainer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Untuk Belajar Kontainer"),
          backgroundColor: Colors.red,
        ),
        body: Container(
          color: Colors.blue,
          margin: EdgeInsets.all(50),
          padding: EdgeInsets.all(20),
          child: Container(
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30), color: Colors.amber),
          ),  
        ),
      ),
    );
  }
}


// StateFull Widget

class Increment extends StatefulWidget {
  @override
  State<Increment> createState() => _IncrementState();
}

class _IncrementState extends State<Increment> {
  int number = 0;

  void tekanTombol() {
    setState(() {
      number = number + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            "Ini adalah StateFullWidget",
          ),
          backgroundColor: Colors.blueGrey,
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                number.toString(),
                style: TextStyle(fontSize: 10 + number.toDouble()),
              ),
              ElevatedButton(
                  child: Text("Tambah Bilangan"), onPressed: tekanTombol)
            ],
          ),
        ),
      ),
    );
  }
}
