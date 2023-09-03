import 'dart:math';

import 'circle.dart';
import 'rectangle.dart';
import 'square.dart';

void main() {
  final Circle circle1 = Circle();
  circle1.radius = 5;
  print('Luas lingkaran : ${circle1.getArea}');
  print('Keliling lingkaran : ${circle1.getPerimeter}\n');

  final Square square1 = Square();
  square1.side = 6;
  print('Luas persegi : ${square1.getArea}');
  print('Keliling persegi : ${square1.getPerimeter}\n');

  final Rectanglee rectangle1 = Rectanglee();
  rectangle1.height = 7;
  rectangle1.width = 8;
  print('Luas persegi panjang : ${rectangle1.getArea}');
  print('Keliling persegi panjang : ${rectangle1.getPerimeter}\n');
}
