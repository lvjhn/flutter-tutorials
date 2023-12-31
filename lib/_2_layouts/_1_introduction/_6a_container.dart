import 'package:flutter/material.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  Widget _buildImageColumn() {
    return Container(
      decoration: const BoxDecoration(
        color: Colors.black26
      ), 
      child: Column(
        children: [
          _buildImageRow(1),
          _buildImageRow(3)
        ]
      )
    );
  }

  Widget _buildDecoratedImage(int imageIndex) => Expanded(
    child: Container(
      decoration: BoxDecoration(
        border: Border.all(width: 10, color: Colors.black38),
        borderRadius: const BorderRadius.all(Radius.circular(8)),
      ),
      margin: const EdgeInsets.all(4),
      child: Image.asset('images/pic$imageIndex.jpg'),
    ),
  );

  Widget _buildImageRow(int imageIndex) => Row(
    children: [
      _buildDecoratedImage(imageIndex), 
      _buildDecoratedImage(imageIndex + 1)
    ]
  );


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter layout demo',
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Flutter layout demo'),
        ),
        body: Center(child: _buildImageColumn()),
      ),
    );
  }


}


void setup() {
  runApp(const MyApp());
}