import 'dart:io';

void main() async {
  await faktorial(5);
}

Future<void> faktorial(int angka) async {
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
}
