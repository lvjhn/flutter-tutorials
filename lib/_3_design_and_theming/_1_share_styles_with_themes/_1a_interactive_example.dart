import 'package:flutter/material.dart'; 

void setup() {
  runApp(const MyApp()); 
}

class MyApp extends StatelessWidget {
  const MyApp({ super.key }); 

  @override 
  Widget build(BuildContext context) {
    const appName = 'Custom Themes';

    return MaterialApp(
      title: appName, 
      theme: ThemeData(
        brightness: Brightness.dark, 
        primaryColor: Colors.lightBlue, 
        
        fontFamily: 'Georgia', 

        textTheme: const TextTheme(
          displayLarge: TextStyle(fontSize: 72, fontWeight: FontWeight.bold), 
          titleLarge: TextStyle(fontSize: 36, fontStyle: FontStyle.italic), 
          bodyMedium: TextStyle(fontSize: 14, fontFamily: 'Hind')
        )
      ),
      home: const MyHomePage(
        title: appName
      )
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
      body: Center(
        child: Container(
          color: Theme.of(context).colorScheme.secondary, 
          child: Text(
            'Text with a background color',
            style: Theme.of(context).textTheme.titleLarge
          )
        )
      ),
      floatingActionButton: Theme(
        data: Theme.of(context).copyWith(splashColor: Colors.yellow), 
        child: FloatingActionButton(
          onPressed: () {}, 
          child: const Icon(Icons.add)
        )
      )
    );
  }
}