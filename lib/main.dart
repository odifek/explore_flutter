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
      body: Column(
        children: <Widget>[
          Text('Hello worlds!'),
          MyButton(),
        ],
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

class MyButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        print("MyButton was tapped!");
      },
      child: Container(
        height: 36.0,
        padding: const EdgeInsets.all(8.0),
        margin: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 8.0),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(5.0),
          color: Colors.lightGreen[500],
        ),
        child: Center(
          child: Text("Engage"),
        ),
      ),
    );
  }
}
