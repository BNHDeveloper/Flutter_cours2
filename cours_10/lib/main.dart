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
  // TabController? tabController ;
  // @override
  // void initState() {
  //   tabController = TabController(length: 3, vsync: this);
  //   super.initState();
  // }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController( // to avoid using tabController
      length: 3,
      initialIndex: 2,
      child: Scaffold(
        key: keyState,
      appBar: AppBar(
        title: Text(
          "_________", 
          style: TextStyle(color: Colors.deepOrange)
          ),
        centerTitle: true,
        bottom: TabBar(
          indicatorColor: Colors.deepOrange,
          indicatorWeight: 2,
          dividerColor: Colors.black,
          labelColor: Colors.deepOrange,
          labelStyle: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
          unselectedLabelColor: Colors.grey,
          tabs: [
            Tab(icon: Icon(Icons.home),text: "home",iconMargin: EdgeInsets.all(5),),
            Tab(icon: Icon(Icons.star),text:"favorite",iconMargin: EdgeInsets.all(5),),
            Tab(icon: Icon(Icons.person),text:"profile",iconMargin: EdgeInsets.all(5),),
          ],)
      ),
      body: Container(
        padding: EdgeInsets.all(20),
        child: Center(
          child: TabBarView(
            // controller: tabController,
            children: [
            Icon(Icons.home, size: 150, color: Colors.deepOrange),
            // MaterialButton(
            //   onPressed: (){
            //     TabController.animateTo(0);
            //   },
            //   color: Colors.deepOrange,
            //   child: Text("Click Me", style: TextStyle(color: Colors.white),),
            // ),
            Icon(Icons.star, size: 150, color: Colors.deepOrange),
            Icon(Icons.person, size: 150, color: Colors.deepOrange),
          ],),
        ),
      ),)
    );
  }
}
