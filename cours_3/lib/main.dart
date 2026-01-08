import 'dart:ffi';

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
      theme: ThemeData.light(useMaterial3: true),
      home: HomeScreen(), // proper widget
    );
  }
}

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _MyAppState();
}

class _MyAppState extends State<HomeScreen> {
  bool status = true;
  bool status1 = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("cours"), centerTitle: true),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Switch(
            value: status,
            activeThumbColor: Colors.deepOrange,
            activeTrackColor: Colors.orangeAccent,
            inactiveThumbColor: const Color.fromARGB(255, 250, 17, 0),
            // inactiveTrackColor:  const Color.fromARGB(255, 249, 129, 129),
            onChanged: (val) {
              setState(() {
                status = val;
              });
            },
          ),
          SwitchListTile(
            title: Text("Switch List Tile"),
            tileColor: Color(0xfff0f0f0),
            value: status1,
            activeThumbColor: Colors.red,
            inactiveThumbColor: Colors.black,
            onChanged: (val) {
              setState(() {
                status1 = val;
              });
            },
          ),
        ],
      ),
    );
  }
}
