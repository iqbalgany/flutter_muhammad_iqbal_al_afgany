void main() {
  // Soal Prioritas 1 No 1
  int s = 5;
  int kelilingPersegi = s * 4;
  int luasPersegi = s * s;

  print('Keliling Persegi : ${kelilingPersegi}');
  print('Luas Persegi : ${luasPersegi}\n');

  int p = 3;
  int l = 4;
  int kelilingPersegiPanjang = 2 * (p + l);
  int luasPersegiPanjang = p * l;
  print('Keliling Persegi Panjang : ${kelilingPersegiPanjang}');
  print('Luas Persegi Panjang : ${luasPersegiPanjang}\n');

  // Soal Prioritas 1 No 2
  double phi = 3.14;
  int r = 8;
  double luasLingkaran = phi * r * r;
  double kelilingLingkaran = 2 * phi * r;
  print('Keliling Lingkaran : ${kelilingLingkaran}');
  print('Luas Lingkaran : ${luasLingkaran}\n');
}
