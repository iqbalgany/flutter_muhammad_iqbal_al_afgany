import 'dart:io';

void main() {
  int i, j, n;

  stdout.write("masukan n : ");
  n = int.parse(stdin.readLineSync()!);
  print('\n');

  for (i = 1; i < 2 * n; i++) {
    for (j = 1; j < 2 * n; j++) {
      if ((i <= j && i + j <= 2 * n) || (i > n && i >= j && i + j >= 2 * n))
        stdout.write("0");
      else
        stdout.write(" ");
    }
    stdout.write("\n");
  }
}
