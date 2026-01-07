import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.light(useMaterial3: true),
      home: HomeScreen(), // proper widget
    );
  }
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Cours", style: TextStyle(color: Colors.white)),
        centerTitle: true,
        backgroundColor: Colors.black,
      ),
      body: Column(
        children: [
          Card(
            color: Colors.white,
            margin: EdgeInsets.all(10),
            child: ListTile(
              // isThreeLine: true,
              enabled: false,
              leading: Text("Leading"),
              title: Text("Text"),
              subtitle: Text("subtitle"),
              trailing: Text("Trailing"),
              onTap: () {
                print("card");
              },
            ),
          ),
          Card(
            color: Colors.white,
            margin: EdgeInsets.all(10),
            child: ListTile(
              leading: Text("Leading"),
              title: Text("Text"),
              subtitle: Text("subtitle"),
              trailing: Text("Trailing"),
              onTap: () {
                print("card");
              },
            ),
          ),
        ],
      ),
    );
  }
}
