import 'dart:io';

void main() {
  // Tugas Percabangan
  print('Tugas Percabangan');

  int nilai;
  stdout.write('Masukkan Nilai : ');
  nilai = int.parse(stdin.readLineSync().toString());

  if (nilai > 70) {
    print('Nilai A\n');
  } else if (nilai > 40) {
    print('Nilai B\n');
  } else if (nilai > 0) {
    print('Nilai C\n');
  } else {
    print('Kosong\n');
  }

  // Tugas Perulangan
  print('Tugas Perulangan');
  for (int i = 1; i <= 10; i++) {
    print(i);
  }
}
