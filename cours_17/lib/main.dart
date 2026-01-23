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
  GlobalKey<ScaffoldState> scaffoldKey = GlobalKey();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      appBar: AppBar(
        centerTitle: true,
        title: Text("_________", style: TextStyle(color: Colors.deepOrange)),
      ),
      body: Column(
        children: [
          Center(child: Text("Welcome page")),
          MaterialButton(
            color: Colors.deepOrange,
            textColor: Colors.white,
            onPressed: () {
              scaffoldKey.currentState?.showBottomSheet((context)=>Container(
                  height: 200,
                  width: double.infinity,
                  color: Colors.grey[200],
                  child: Center(child: Text("This is a Bottom Sheet")),
                )
              );
            },
            child: Text("button 1"),
          ),
          MaterialButton(
            color: Colors.deepOrange,
            textColor: Colors.white,
            onPressed: () {
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(
                  content: Text("This is a SnackBar"),
                  duration: Duration(seconds: 2),
                ),
              );
            },
            child: Text("button 2"),
          ),
        ],
      ),
    );
  }
}
