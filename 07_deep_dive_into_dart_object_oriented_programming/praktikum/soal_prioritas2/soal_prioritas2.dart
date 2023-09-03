import 'faktor_persekutuan_terbesar.dart';
import 'kelipatan_persekutuan_terkecil.dart';

void main() {
  KelipatanPersekutuanTerkecil kpk1 = KelipatanPersekutuanTerkecil();
  kpk1.x = 5;
  kpk1.y = 4;
  print('KPK dari ${kpk1.x} dan ${kpk1.y} adalah : ${kpk1.hasil()}');

  FaktorPersekutuanTerbesar fpb1 = FaktorPersekutuanTerbesar();
  fpb1.x = 12;
  fpb1.y = 20;
  print('FPB dari ${fpb1.x} dan ${fpb1.y} adalah : ${fpb1.hasil()}');
}
