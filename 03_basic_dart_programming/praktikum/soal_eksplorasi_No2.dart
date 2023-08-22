void main() {
  int bil = 24;
  int tambah = 0;
  print("Faktor dari 24 :");
  for (int i = 0; i <= bil; i++) {
    tambah++;
    if (bil % tambah == 0) {
      print('${tambah}');
    }
  }
}
