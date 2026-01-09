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
  String country='Algeria';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("_________",style: TextStyle(color: Colors.deepOrange),), centerTitle: true),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Text("Choose a Country",style: TextStyle(fontSize: 33),),
          RadioGroup(
            groupValue:country,
            onChanged: (value) {
                setState(() {
                  if (value!=null) {
                    country = value;
                  }
                  });
              },
            child: Column(
              children: [
                RadioListTile(
                  title: Text("Algeria"),
                  value: "Algeria",
                  activeColor: Colors.deepOrange,
                  enabled: false,
                ),
                RadioListTile(
                  title: Text("Qatar"),
                  value: "Qatar",
                  activeColor: Colors.deepOrange,
                  fillColor: WidgetStatePropertyAll(Colors.deepOrange),
                ),
                RadioListTile(
                  title: Text("Palestine"),
                  value: "Palestine",
                  activeColor: Colors.deepOrange,
                  fillColor: WidgetStatePropertyAll(Colors.deepOrange),
                ),
              ],
            ),
          ),
          Text("your country is : $country",style: TextStyle(fontSize: 20,color: Colors.deepOrange,))
        ],
      ),
    );
  }
}
