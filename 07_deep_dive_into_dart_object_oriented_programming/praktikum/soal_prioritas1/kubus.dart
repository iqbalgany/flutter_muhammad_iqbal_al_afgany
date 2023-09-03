import 'bangun_ruang.dart';

class Kubus extends BangunRuang {
  double sisi = 0;

  @override
  volume() {
    double volumeKubus = 0;
    volumeKubus = this.sisi * this.sisi * this.sisi;
    return volumeKubus;
  }
}
