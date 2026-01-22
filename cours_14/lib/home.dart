import 'package:flutter/material.dart';
import 'package:todo_lists/main.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("_________", style: TextStyle(color: Colors.deepOrange)),
      ),
      body: Column(
        children: [
          Center(
            child: Text("welcome to the home page"),
          ),
          MaterialButton(
            color: Colors.deepOrange,
            textColor: Colors.white,
            onPressed: () {
              Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context)=>HomeScreen()));
            },
            child: Text("Main Page"),
          ),
        ],
      ),
    );
  }
}