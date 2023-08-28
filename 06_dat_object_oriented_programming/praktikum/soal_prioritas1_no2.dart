void main() {
  var mobil = Mobil(kapasitas: 4, muatan: [
    'singa',
    'siput',
  ]);
  mobil.tambahMuatan('harimau');
  mobil.tambahMuatan('kucing');

  print(mobil.muatan);
}

class Mobil {
  int? kapasitas;
  List<String> muatan;

  Mobil({
    required this.kapasitas,
    required this.muatan,
  });
  void tambahMuatan(String namaHewan) {
    if (muatan.length >= kapasitas!) {
      print('Muatan penuh');
    } else {
      muatan.add(namaHewan);
    }
  }
}
