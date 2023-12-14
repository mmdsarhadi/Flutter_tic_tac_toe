import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  String displayEx0h = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade800,
      body: GridView.builder(
          itemCount: 9,
          gridDelegate:
              SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3),
          itemBuilder: (BuildContext context, int index) {
            return GestureDetector(
              onTap: _tapped,
              child: Container(
                decoration: BoxDecoration(
                    border: Border.all(color: Colors.grey.shade700)),
                child: Center(
                  child: Text(
                    displayEx0h,
                    style: TextStyle(color: Colors.white, fontSize: 48),
                  ),
                ),
              ),
            );
          }),
    );
  }

  void _tapped() {
    setState(() {
      displayEx0h = '0';
    });
  }
}
