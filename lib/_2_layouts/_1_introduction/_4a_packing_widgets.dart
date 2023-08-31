import 'package:flutter/material.dart';

class MyApp extends StatelessWidget {
  const MyApp({ super.key }); 

  @override 
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Layout Demo', 
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Flutter Layout Demo') 
        ),
        body: Center(
          child: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              Icon(Icons.star, color: Colors.green[500]), 
              Icon(Icons.star, color: Colors.green[500]), 
              Icon(Icons.star, color: Colors.green[500]), 
              const Icon(Icons.star, color: Colors.black), 
              const Icon(Icons.star, color: Colors.black)
            ]
          )
        )
      )
    );
  }
}

void setup() {
  runApp(const MyApp());
}