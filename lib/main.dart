import 'package:flutter/material.dart';

class MyAppBar extends StatelessWidget {
  MyAppBar({this.title});

  final Widget title;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 56.0,
      padding: const EdgeInsets.symmetric(horizontal: 8.0),
      decoration: BoxDecoration(color: Colors.purple[500]),

      // Row is a horizontal, linear layout
      child: Row(
        children: <Widget>[
          IconButton(
            icon: Icon(Icons.menu),
            onPressed: null,
            tooltip: 'Navigation Menu',
          ),
          // Expanded expands its child to fill the available space
          Expanded(child: title),
          IconButton(
            icon: Icon(Icons.search),
            onPressed: null,
            tooltip: 'Search',
          ),
        ],
      ),
    );
  }
}

class MyScaffold extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Material(
      // Column is vertical linear layout
      child: Column(
        children: <Widget>[
          MyAppBar(
            title: Text(
              'Lovely Appbar',
              style: Theme.of(context).primaryTextTheme.title,
            ),
          ),
          Expanded(
              child: Center(
            child: Text("Hello, world!"),
          ))
        ],
      ),
    );
  }
}

void main() {
  runApp(MaterialApp(
    title: "My App",
    home: MyScaffold(),
  ));
}
