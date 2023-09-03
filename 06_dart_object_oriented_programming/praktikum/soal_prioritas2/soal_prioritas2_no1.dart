import 'calculator.dart';

void main() {
  Calculator calculator = Calculator(10, 5);

  print('Nilai a : ${calculator.a.toInt()}');
  print('Nilai b : ${calculator.b.toInt()}');
  print('\n');
  print('Hasil Penjumlahan : ${calculator.penjumlahan().toInt()}');
  print('Hasil Pengurangan : ${calculator.pengurangan().toInt()}');
  print('Hasil Perkalian : ${calculator.perkalian().toInt()}');
  print('Hasil Pembagian : ${calculator.pembagian().toInt()}');
}
