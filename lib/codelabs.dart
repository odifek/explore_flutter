import 'dart:math';

main(List<String> args) {
  var bike = Bicycle(2, 1);
  bike.speedUp(3);
  print(bike);

  print("Rectangle instances");
  print("------------------------");
  print(Rectangle(origin: const Point(10, 10), width: 100, height: 200));
  print(Rectangle(origin: const Point(10, 10)));
  print(Rectangle(width: 200));
  print(Rectangle());

  print("Shapes and areas");
  print("----------------------");
  final circle = shapeFactory("circle");
  final square = shapeFactory("square");
  print("Circle area: ${circle.area}");
  print("SQuare area: ${square.area}");
}

Shape shapeFactory(String type) {
  if (type.toLowerCase() == 'circle') {
    return Circle(2);
  }
  if (type.toLowerCase() == 'square') {
    return Square(2);
  }
  throw "Can't create $type";
}

class Bicycle {
  Bicycle(this.cadence, this.gear);

  int cadence;
  int _speed = 0;
  int get speed => _speed;
  int gear;

  void applyBrake(int decrement) {
    _speed -= decrement;
  }

  void speedUp(int increment) {
    _speed += increment;
  }

  @override
  String toString() => 'Bicycle: $_speed mph';
}

class Rectangle {
  Rectangle({this.origin = const Point(0, 0), this.width: 0, this.height: 0});

  int width;
  int height;
  Point origin;

  @override
  String toString() => "Origin: (${origin.x}, ${origin.y}), width: $width, height: $height";
}

class Point {
  const Point(this.x, this.y);
  final int x;
  final int y;
}

abstract class  Shape {
  num get area;
}

class Circle implements Shape {
  final num radius;
  Circle(this.radius);

  @override
  num get area => pi * pow(radius, 2);
}

class Square implements Shape {
  final num side;
  Square(this.side);

  @override
  num get area => pow(side, 2);
}