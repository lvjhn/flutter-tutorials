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
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Expanded(child: Image.asset('images/pic1.jpg')),
              Expanded(flex: 2, child: Image.asset('images/pic2.jpg')),
              Expanded(child: Image.asset('images/pic3.jpg'))
            ],
          )
        )
      )
    );
  }
}

void setup() {
  runApp(const MyApp());
}