import 'dart:io';

void main() {
  int bilangan;

  stdout.write('Masukkan bilangan : ');
  bilangan = int.parse(stdin.readLineSync().toString());

  if (bilangan % 2 == 1 || bilangan == 2) {
    stdout.write('Bilangan prima');
  } else {
    stdout.write('Bukan bilangan prima');
  }
}
