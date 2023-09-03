import 'shape.dart';

class Rectanglee implements Shape {
  int width = 0;
  int height = 0;
  @override
  // TODO: implement getArea
  int get getArea {
    int rectangleArea = 0;
    rectangleArea = this.height * this.width;
    return rectangleArea;
  }

  @override
  // TODO: implement getPerimeter
  int get getPerimeter {
    int rectanglePerimeter = 0;
    rectanglePerimeter = 2 * (this.height + this.width);
    return rectanglePerimeter;
  }
}
