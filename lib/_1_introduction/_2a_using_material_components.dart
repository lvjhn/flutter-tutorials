import 'package:flutter/material.dart';

void setup() {
  runApp(
    const MaterialApp(
      title: 'Flutter Tutorial', 
      home: TutorialHome() 
    )
  ); 
}

class TutorialHome extends StatelessWidget {
  const TutorialHome({ super.key }); 

  @override 
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const IconButton(
          icon: Icon(Icons.menu), 
          tooltip: 'Navigation menu', 
          onPressed: null
        ),
        title: const Text('Example title'), 
        actions: const [
          IconButton(
            icon: Icon(Icons.search), 
            tooltip: 'Search', 
            onPressed: null
          )
        ]
      ), 
      // --- ORIGINAL --- //
      // body : const Center(
      //   child: Text('Hello, world!')
      // ), 
      body: Container( 
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
        child: const Column(
          children: [
            Text("Text A"), 
            Text("Text B")
          ]
        )
      ),
      floatingActionButton: const FloatingActionButton(
        tooltip: 'Add',
        onPressed: null, 
        child: Icon(Icons.add)
      )
    );
  } 
}

