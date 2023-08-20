void main() {
  int bil = 24;
  print("Faktor dari 24 :");
  int tambah = 0;
  for (int i = 0; i <= bil; i++) {
    tambah++;
    if (bil % tambah == 0) {
      print('${tambah}' + ' ');
    }
  }
}
