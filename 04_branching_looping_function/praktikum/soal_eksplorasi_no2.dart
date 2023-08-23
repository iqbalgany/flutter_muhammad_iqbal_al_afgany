import 'dart:io';

void main() {
  int baris, kolom, n, x;

  stdout.write('Masukkan Ordo : ');
  n = int.parse(stdin.readLineSync().toString());

  // stdout.write(' X ');
  // for (x = 1; x <= n; x++) {
  //   stdout.write(' $x ');
  // }

  stdout.write('\n');

  for (baris = 1; baris <= n; baris++) {
    stdout.write(' $baris');
    for (kolom = 1; kolom <= n; kolom++) {
      stdout.write('  ${baris * kolom}');
    }
    stdout.write('\n');
  }
}
