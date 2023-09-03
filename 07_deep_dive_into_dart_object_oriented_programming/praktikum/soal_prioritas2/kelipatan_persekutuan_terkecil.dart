import 'matematika.dart';

class KelipatanPersekutuanTerkecil implements Matematika {
  int x = 0;
  int y = 0;
  @override
  hasil() {
    int z = 0;
    for (var i = 1; i <= this.y; i++) {
      z = (z + this.x);
      if (z % this.y == 0) {
        return z;
      }
    }
  }
}
