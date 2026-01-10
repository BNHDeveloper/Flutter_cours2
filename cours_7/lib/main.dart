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

class _MyAppState extends State<HomeScreen> {
  GlobalKey<FormState> keyform = GlobalKey();
  String username = '';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("_________", style: TextStyle(color: Colors.deepOrange)),
        centerTitle: true,
      ),
      body: Container(
        padding: EdgeInsets.all(20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Center(
              child: Text(
                "Choose an Operation system",
                style: TextStyle(fontSize: 26),
              ),
            ),
            SizedBox(height: 50),
            Form(
              key: keyform,
              child: Column(
                children: [
                  TextFormField(
                    onSaved: (newValue) {
                      username = newValue!;
                    },
                    validator: (value) {
                      if (value!.isEmpty) {
                        return "You should write something";
                      }
                    },
                  ),
                  MaterialButton(
                    child: Text("Add"),
                    textColor: Colors.white,
                    color: Colors.deepOrange,
                    onPressed: () {
                      if (keyform.currentState!.validate()) {
                        keyform.currentState!.save();
                        print(username);
                      } else {
                        print("not valid");
                      }
                    },
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
