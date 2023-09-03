import 'shape.dart';

class Circle implements Shape {
  int radius = 0;

  @override
  // TODO: implement getArea
  int get getArea {
    double phi = 3.14;
    double circleArea = 0;
    circleArea = phi * this.radius * this.radius;
    return circleArea.toInt();
  }

  @override
  // TODO: implement getPerimeter
  int get getPerimeter {
    double phi = 3.14;
    double circlePerimeter = 0;
    circlePerimeter = 2 * phi * this.radius;
    return circlePerimeter.toInt();
  }
}
