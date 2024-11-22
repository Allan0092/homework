class Shape {
  double area() {
    return 0;
  }
}

class Circle extends Shape {
  double radius;

  Circle(this.radius);

  @override
  double area() {
    return 3.14 * radius * radius;
  }
}

class Rectangle extends Shape {
  double width;
  double height;

  Rectangle(this.width, this.height);

  @override
  double area() {
    return width * height;
  }
}

void main() {
  List<Shape> shapes = [Circle(5), Rectangle(4, 6)];

  for (var shape in shapes) {
    print('Area: ${shape.area()}');
  }
}
