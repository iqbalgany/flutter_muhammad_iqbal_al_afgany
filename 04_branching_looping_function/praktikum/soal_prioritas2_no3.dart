import 'dart:io';

void main() {
  int bil = 10;
  int tambah = 0;
  print("Faktor dari 10 :");
  for (int i = 0; i <= bil; i++) {
    tambah++;
    if (bil % tambah == 0) {
      stdout.write(' ${tambah}');
    }
  }
  stdout.write('\n');

  int bil2 = 40;
  int tambah2 = 0;
  print("Faktor dari 40 :");
  for (int i = 0; i <= bil2; i++) {
    tambah2++;
    if (bil2 % tambah2 == 0) {
      stdout.write(' ${tambah2}');
    }
  }
  stdout.write('\n');

  int bil3 = 50;
  int tambah3 = 0;
  print("Faktor dari 50 :");
  for (int i = 0; i <= bil3; i++) {
    tambah3++;
    if (bil3 % tambah3 == 0) {
      stdout.write(' ${tambah3}');
    }
  }
}
