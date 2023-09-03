import 'dart:io';

class TokoBuku {
  List daftarBuku = [];
  int? id;
  int? harga;
  String? judul;
  String? penerbit;
  String? kategori;

  void tambahBuku(TokoBuku tokoBuku) {
    daftarBuku.add(tokoBuku);
  }

  void tampilkanBuku() {
    if (daftarBuku.isEmpty) {
      print('Buku belum terisi');
    } else {
      print('Buku : ');
      for (var element in daftarBuku) {
        print('id       : ${id}');
        print('judul    : ${judul}');
        print('penerbit : ${penerbit}');
        print('harga    : ${harga}');
        print('kategori : ${kategori}\n');
      }
    }
  }
}
