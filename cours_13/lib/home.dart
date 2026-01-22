import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("_________", style: TextStyle(color: Colors.deepOrange)),
      ),
      body: Center(
        child: Text("welcome to the home page"),
      ),
    );
  }
}