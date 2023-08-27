import 'dart:io';

void main() {
  int spasi, baris;

  stdout.write("Masukan Jumlah Baris: ");
  baris = int.parse(stdin.readLineSync()!);

  for (int i = 1, k = 0; i <= baris; ++i, k = 0) {
    for (spasi = 1; spasi <= baris - i; ++spasi) {
      stdout.write('  ');
    }

    while (k != 2 * i - 1) {
      stdout.write('* ');
      ++k;
    }
    stdout.write('\n');
  }
}
