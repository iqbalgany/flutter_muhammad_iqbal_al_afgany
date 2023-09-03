import 'balok.dart';
import 'kubus.dart';

void main() {
  Kubus kubus1 = Kubus();
  kubus1.sisi = 6.5;
  print('Volume Kubus : ${kubus1.volume()}');

  Balok balok1 = Balok();
  balok1.lebar = 7;
  balok1.panjang = 8;
  balok1.tinggi = 9;
  print('Volume Balok : ${balok1.volume()}');
}
