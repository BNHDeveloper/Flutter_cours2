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
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.all(16.0),
          child: ListView(
            children: [
              Row(
                children: [
                  Expanded(
                    child: TextFormField(
                      textAlignVertical: TextAlignVertical.center,
                      decoration: InputDecoration(
                        hintText: "Search",
                        border: InputBorder.none,
                        fillColor: Colors.grey[200],
                        filled: true, 
                        prefixIcon: Icon(Icons.search, fontWeight:FontWeight.bold,),
                      ),
                    ),
                  ),
                  IconButton(icon: Icon(Icons.menu), onPressed: () {}),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
