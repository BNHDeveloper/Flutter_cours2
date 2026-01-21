import 'dart:developer';
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

class _MyAppState extends State<HomeScreen>{//with SingleTickerProviderStateMixin
  GlobalKey<ScaffoldState> keyState = GlobalKey();
  int selectedIndex = 0;
  List<Widget> pages = [
    Center(child: Text("Home Page"),),
    Center(child: Text("Search Page"),),
    Center(child: Text("Profile Page"),),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: keyState,
    appBar: AppBar(
      centerTitle: true,
      title: Text(
        "_________", 
        style: TextStyle(color: Colors.deepOrange)
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: Colors.deepOrange,
        currentIndex: selectedIndex,
        onTap: (value) {
          setState(() {
            selectedIndex=value;
          });
        },
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home_max,),
            label: "Home",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search),
            label: "Search",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: "Profile",
          ),
        ],
      
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            pages[selectedIndex],
          ],
        ),
      ),
    );
  }
}
