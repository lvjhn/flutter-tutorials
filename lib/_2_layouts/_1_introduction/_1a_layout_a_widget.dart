// Layout a Widget - Material Apps 

import 'package:flutter/material.dart';

class MyApp extends StatelessWidget {
  const MyApp({ super.key });

  @override 
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter layout demo', 
      home: Scaffold(
        appBar: AppBar( 
          title: const Text('Flutter layout demo')
        ),
        body: const Center(
          child: Text('Hello World')
        )
      )
    ); 
  }
}

void setup() {
  runApp(const MyApp());
}