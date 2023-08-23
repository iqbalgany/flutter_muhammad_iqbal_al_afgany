import 'dart:io';

void main() {
  String karakter;
  int nilai;

  stdout.write('Masukkan sebuah karakter : ');
  karakter = stdin.readLineSync().toString();
  stdout.write('Masukkan nilai : ');
  nilai = int.parse(stdin.readLineSync().toString());

  for (int a = 0; a <= (nilai - 1); a++) {
    for (int b = 1; b <= a; b++) {
      stdout.write(' ');
    }
    for (int c = 0; c >= (a - nilai + 1); c--) {
      stdout.write(karakter + ' ');
    }
    stdout.write('\n');
  }

  for (int i = 0; i < nilai; i++) {
    for (int j = 1; j < nilai - i; j++) {
      stdout.write(' ');
    }
    for (int k = 0; k < (i + 1); k++) {
      stdout.write(karakter + ' ');
    }
    stdout.write('\n');
  }
}
