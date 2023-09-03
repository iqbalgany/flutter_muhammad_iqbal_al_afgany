import 'mobil.dart';

void main() {
  final Mobil mobil = Mobil(kapasitas: 4, muatan: [
    'singa',
    'siput',
  ]);
  mobil.tambahMuatan('harimau');
  mobil.tambahMuatan('kucing');

  print(mobil.muatan);
}
