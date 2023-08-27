import 'dart:io';

void main() {
  faktorial(10);
  faktorial(40);
  faktorial(50);
}

void faktorial(int angka) {
  int i;
  BigInt hasil;

  hasil = BigInt.one;
  stdout.write("${angka}! = ");

  for (i = 1; i <= angka; i++) {
    hasil = hasil * BigInt.from(i);

    // untuk menampilkan angka
    stdout.write(i);
    if (i != angka) {
      stdout.write(" * ");
    }
  }

  stdout.write(" = ${hasil}");
  print('\n');
}
