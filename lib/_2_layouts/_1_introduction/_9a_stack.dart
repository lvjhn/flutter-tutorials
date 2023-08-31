import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart' show debugPaintSizeEnabled; 

void setup() {
  debugPaintSizeEnabled = false; 
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({ super.key }); 



  @override 
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Flutter Layout Demo", 
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Flutter Layout Demo")
        ),
        body:  Stack(
          alignment: const Alignment(0.6, 0.6), 
          children: [
            const CircleAvatar(
              backgroundImage: AssetImage('images/pic1.jpg'),
              radius: 100
            ),
            Positioned(
              bottom: 0,
              left: 0,
              child: Container(
                decoration: const BoxDecoration(
                  color: Colors.black45,
                ),
                child: const Text(
                  'Some Pic',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                )
              ) 
            )
          ],
        )
      ),
    );
  }

      

}
