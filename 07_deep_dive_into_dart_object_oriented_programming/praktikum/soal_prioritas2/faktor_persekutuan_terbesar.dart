import 'matematika.dart';

class FaktorPersekutuanTerbesar implements Matematika {
  int x = 0;
  int y = 0;

  @override
  hasil() {
    int z = this.y % this.x;

    while (z != 0) {
      this.x = this.y;
      this.y = z;
      z = this.x % this.y;
    }
    return y;
  }
}
