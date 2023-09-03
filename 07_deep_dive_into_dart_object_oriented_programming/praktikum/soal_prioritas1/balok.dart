import 'bangun_ruang.dart';

class Balok extends BangunRuang {
  @override
  volume() {
    double volumeBalok = 0;
    volumeBalok = super.panjang * super.lebar * this.tinggi;
    return volumeBalok;
  }
}
