import 'dart:io';

void main() {
  // Tugas Perulangan No 1
  int i, j, k, l;

  stdout.write('Masukkan tinggi piramida : ');
  int tinggiSegitiga = int.parse(stdin.readLineSync().toString());

  for (i = 1; i <= tinggiSegitiga; i++) {
    for (j = tinggiSegitiga - 1; j >= i; j--) {
      stdout.write(' ');
    }

    for (k = 1; k <= i; k++) {
      stdout.write(' *');
    }

    for (l = 1; i <= i - 1; l++) {
      stdout.write('* ');
    }
    stdout.write('\n');
  }
}
