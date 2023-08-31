import 'package:flutter/material.dart';

void setup() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({ super.key }); 

  @override 
  Widget build(BuildContext context) {
    const title = 'Fade in images'; 

    return MaterialApp(
      title: title, 
      home: Scaffold(
        appBar: AppBar(
          title: const Text(title)
        ), 
        body: Center(
          child: FadeInImage.assetNetwork(
            placeholder: 'images/lake.jpg', 
            image: 'https://picsum.photos/250?image=9'
          )
        )
      )
    );
  }
}
