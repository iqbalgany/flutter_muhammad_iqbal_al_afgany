import 'shape.dart';

class Square implements Shape {
  int side = 0;

  @override
  // TODO: implement getArea
  int get getArea {
    int squareArea = 0;
    squareArea = this.side * this.side;
    return squareArea;
  }

  @override
  // TODO: implement getPerimeter
  int get getPerimeter {
    int squarePerimeter = 0;
    squarePerimeter = this.side * 4;
    return squarePerimeter;
  }
}
