import 'package:flutter/material.dart';

class CustomWidget extends StatelessWidget {
   final String name;
  const CustomWidget({super.key,required this.name});
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsetsGeometry.all(10),
      child: ListTile(
        title: Text(name),
        iconColor: Colors.deepOrange,
        textColor: Colors.deepOrange,
        trailing:Icon(Icons.add)
      ),
    );
  }
}