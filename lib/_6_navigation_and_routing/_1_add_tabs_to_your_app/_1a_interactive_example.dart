import 'package:flutter/material.dart'; 

void setup() => runApp(const TabBarDemo()); 

class TabBarDemo extends StatelessWidget {
  const TabBarDemo({ super.key }); 

  @override 
  Widget build(BuildContext context) {
    return MaterialApp(
      home: DefaultTabController(
        length: 3, 
        child: Scaffold(
          appBar: AppBar(
            title: const Text('Tabs Demo'),
            bottom: const TabBar(
              tabs: [
                Tab(icon: Icon(Icons.directions_car)), 
                Tab(icon: Icon(Icons.directions_train)), 
                Tab(icon: Icon(Icons.directions_bike))
              ]
            )
          ), 
          body: const TabBarView(
            children: [
              Icon(Icons.directions_car),
              Icon(Icons.directions_train), 
              Icon(Icons.directions_bike)
            ]
          )
        )
      )
    );
  }
}