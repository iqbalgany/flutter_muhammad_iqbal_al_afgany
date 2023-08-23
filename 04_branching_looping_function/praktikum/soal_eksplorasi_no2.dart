import 'dart:io';

void main() {
  int baris, kolom, n;

  stdout.write('Masukkan Ordo : ');
  n = int.parse(stdin.readLineSync().toString());
  stdout.write('\n');

  for (baris = 1; baris <= n; baris++) {
    for (kolom = 1; kolom <= n; kolom++) {
      stdout.write('\t${baris * kolom}');
    }
    stdout.write('\n');
  }
}
