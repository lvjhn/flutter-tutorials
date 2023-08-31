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
        body: Center(child: _buildGrid())
      ),
    );
  }

  Widget _buildGrid() => GridView.extent(
    maxCrossAxisExtent: 150, 
    padding: const EdgeInsets.all(4),
    mainAxisSpacing: 4, 
    crossAxisSpacing: 4, 
    children: _buildGridTileList(30)
  );

  List<Container> _buildGridTileList(int count) => List.generate(
      count, (i) => Container(child: Image.asset('images/pic$i.jpg'))
  );
}
