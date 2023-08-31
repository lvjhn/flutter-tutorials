import 'package:flutter/material.dart'; 

void setup() => runApp(const MyApp());  

class MyApp extends StatelessWidget {
  const MyApp({ super.key }); 

  @override 
  Widget build(BuildContext context) {
    const title = 'Gesture Demo'; 

    return const MaterialApp(
      title: title, 
      home: MyHomePage(title: title)
    ); 
  }
}

class MyHomePage extends StatelessWidget {
  final String title; 

  const MyHomePage({ super.key, required this.title }); 

  @override 
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title)
      ), 
      body: const Center(
        child: MyButton()
      )
    ); 
  }
}

class MyButton extends StatelessWidget {
  const MyButton({ super.key });

  @override 
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        var snackBar = SnackBar(content: Row(
          children: [
            const Expanded(child: Text("Hello")), 
            GestureDetector(
              child: const Text(
                "Hide", 
                style: TextStyle(fontWeight: FontWeight.bold)
              ),
              onTap: () {
                ScaffoldMessenger.of(context).hideCurrentSnackBar();
              }
            )
          ]
        )); 
        ScaffoldMessenger.of(context).showSnackBar(snackBar);
      }, 
      child: Container(
        padding: const EdgeInsets.all(12),
        decoration: BoxDecoration(
          color: Colors.lightBlue, 
          borderRadius: BorderRadius.circular(8)
        ), 
        child: const Text('My Button')
      )
    );
  }
}