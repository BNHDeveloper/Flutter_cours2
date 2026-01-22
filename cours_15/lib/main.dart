import 'package:flutter/material.dart';
import 'package:todo_lists/home.dart';

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
      routes: {"home": (context) => Home(), "page": (context) => HomeScreen()},
    );
  }
}

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _MyAppState();
}

class _MyAppState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("_________", style: TextStyle(color: Colors.deepOrange)),
      ),
      body: Column(
        children: [
          Center(child: Text("data here")),
          MaterialButton(
            color: Colors.deepOrange,
            textColor: Colors.white,
            onPressed: () {
              Navigator.of(context).pushNamed("home");
            },
            child: Text("Home"),
          ),
        ],
      ),
    );
  }
}
