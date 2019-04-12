import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    title: "Flutter Tutorial",
    home: TutorialHome(),
    theme: ThemeData(
      primaryColor: Colors.indigo[500],
      primaryColorDark: Colors.indigo[700],
      accentColor: Colors.amberAccent,
    ),
  ));
}

class TutorialHome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.menu),
          onPressed: null,
          tooltip: "Navigation Menu",
        ),
        title: Text('Awesome Title'),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.search),
            tooltip: 'Search',
            onPressed: null,
          )
        ],
      ),
      body: Center(
        child: Text('Hello worlds!'),
      ),
      floatingActionButton: FloatingActionButton(
        tooltip: 'Add',
        child: Icon(
          Icons.add,
        ),
        onPressed: doNothing,
      ),
    );
  }

  void doNothing() {
    print("You mean nothing?");
  }
}
