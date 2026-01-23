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
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.all(16.0),
          child: ListView(
            children: [
              Text("This is the Home Screen", style: TextStyle(fontSize: 24)),
              SizedBox(height: 20),
              Text(
                "Here you can manage your todo lists.",
                style: TextStyle(fontSize: 18),
              ),
              SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(context, "page");
                },
                child: Text("Go to Main Page"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
