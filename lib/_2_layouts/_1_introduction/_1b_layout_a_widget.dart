// Layout A Widget - Non-Material Apps 
import 'package:flutter/material.dart';

class MyApp extends StatelessWidget {
  const MyApp({ super.key });

  @override 
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(color: Colors.white), 
      child: const Center(
        child: Text(
          "Hello World", 
          textDirection: TextDirection.ltr, 
          style: TextStyle(
            fontSize: 32, 
            color: Colors.black87
          )
        )
      )
    );
  }
} 

void setup() {
  runApp(const MyApp());
}