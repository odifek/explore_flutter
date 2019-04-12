import 'package:explore_flutter/counter.dart';
import 'package:flutter/material.dart';
import 'package:explore_flutter/shopping.dart';

void main() {
  runApp(MaterialApp(
    title: "Flutter Tutorial",
    home: ShoppingList(products: _products,),
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
          Counter(),
          //ShoppingList(products: _products,)
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

const List<Product> _products = <Product>[
  Product(name: "Shoe"),
  Product(name: "Sandals"),
  Product(name: "Laptop"),
  Product(name: "Television"),
  Product(name: "Rinser"),
];

