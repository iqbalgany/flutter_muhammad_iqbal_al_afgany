void main() {
  // Tugas Perulangan No 1
  int i, j, k, l, bintang;
  String cek;
  bool ulang = true;

  while (ulang) {
    print("Bintangnya mau berapa boss? ");
    bintang = 8;

    i = 1;
    while (i <= bintang) {
      j = bintang - 1;
      while (j >= i) {
        print("  ");
        j--;
      }

      k = 1;
      while (k <= i) {
        print("* " * j);
        k++;
      }

      l = 1;
      while (l <= i - 1) {
        print("* ");
        l++;
      }

      i++;
      // print('\n');
    }
    break;
  }
}
