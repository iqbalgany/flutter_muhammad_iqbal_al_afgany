import 'toko_buku.dart';

void main() {
  final TokoBuku buku1 = TokoBuku();
  buku1.id = 1;
  buku1.judul = 'Bulan';
  buku1.penerbit = 'Airlangga';
  buku1.harga = 20000;
  buku1.kategori = 'Astronomi';

  buku1.tambahBuku(buku1);

  buku1.tampilkanBuku();

  final TokoBuku buku2 = TokoBuku();
  buku2.id = 3;
  buku2.judul = 'Matahari';
  buku2.penerbit = 'Gramedia';
  buku2.harga = 50000;
  buku2.kategori = 'Astronomi';

  buku2.tambahBuku(buku2);

  buku2.tampilkanBuku();
}
