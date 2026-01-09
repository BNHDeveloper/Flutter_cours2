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
  String os = '';
  String os1 = '';
  String os2 = '';
  bool status = false;
  bool status1 = false;
  bool status2 = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("_________", style: TextStyle(color: Colors.deepOrange)),
        centerTitle: true,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Center(
            child: Text(
              "Choose an Operation system",
              style: TextStyle(fontSize: 26),
            ),
          ),
          SizedBox(height: 50,),
          Column(
            children: [
              CheckboxListTile(
                title: Text("Windows",style: TextStyle(fontSize: 16),),
                titleAlignment: ListTileTitleAlignment.center,
                value: status,
                activeColor: Colors.deepOrange,
                onChanged: (value) {
                  setState(() {
                    status = value!;
                    status? os="Windows":os="";
                  });
                },
              ),
              CheckboxListTile(
                title: Text("Linux",style: TextStyle(fontSize: 16),),
                titleAlignment: ListTileTitleAlignment.center,
                value: status1,
                activeColor: Colors.deepOrange,
                onChanged: (value) {
                  setState(() {
                    status1 = value!;
                    status1? os1="Linux":os1="";
                  });
                },
              ),
              CheckboxListTile(
                title: Text("Mac",style: TextStyle(fontSize: 16),),
                titleAlignment: ListTileTitleAlignment.center,
                value: status2,
                activeColor: Colors.deepOrange,
                onChanged: (value) {
                  setState(() {
                    status2 = value!;
                    status2? os2="Mac":os2="";
                  });
                },
              ),
              SizedBox(height: 50,),
              Text(
                "Your Like $os $os1 $os2 Operation Systems",
                style: TextStyle(fontSize: 20),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
