import 'package:flutter/material.dart'; 

void setup() => runApp(const MyApp()); 

class MyApp extends StatelessWidget {
  const MyApp({ super.key }); 

  @override 
  Widget build(BuildContext context) {
    const appTitle = 'Form Styling Demo';
    return MaterialApp(
      title: appTitle, 
      home: Scaffold(
        appBar: AppBar(
          title: const Text(appTitle),
        ),
        body: const MyCustomForm()
      )
    );
  }
}

class MyCustomForm extends StatelessWidget {
  const MyCustomForm({ super.key }); 

  @override 
  Widget build(BuildContext context) {
    return Container(
        margin: const EdgeInsets.all(20), 
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start, 
          children: <Widget> [
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 8, vertical: 16), 
              child: TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: 'Enter a search term'
                )
              )
            ), 
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 15), 
              child: TextFormField(
                decoration: const InputDecoration(
                  border: UnderlineInputBorder(), 
                  labelText: 'Enter your username'
                )
              )
            )
          ]
        )
    );
  }
}

