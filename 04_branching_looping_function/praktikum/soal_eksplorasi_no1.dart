import 'dart:io';

void main() {
  int bilangan, cek = 0;

  stdout.write('Masukkan bilangan : ');
  bilangan = int.parse(stdin.readLineSync().toString());

  for (int i = 2; i <= bilangan; i++) {
    if (bilangan % i == 0) {
      cek++;
    }
  }

  if (cek == 1) {
    stdout.write("${bilangan} adalah bilangan prima");
  } else {
    stdout.write('${bilangan} bukan bilangan prima');
  }
}
