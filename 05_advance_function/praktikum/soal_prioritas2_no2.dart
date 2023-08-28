import 'dart:io';

void main() {
  final List<int> nilai = [7, 5, 3, 5, 2, 1];
  double total = 0;
  int jumlahNilai = 0, banyakNilai;

  for (int i = 0; i < nilai.length; i++) {
    if (i == nilai.length - 1) {
      print('${nilai[i]}');
    } else {
      stdout.write('${nilai[i]} + ');
    }
    jumlahNilai += nilai[i];
  }
  stdout.write('\n');
  print('Jumlah nilai : ${jumlahNilai}');

  banyakNilai = nilai.length;
  print('Banyak nilai : ${banyakNilai}');

  for (var i = 0; i < nilai.length; i++) {
    total += nilai[i];
  }
  total = total / nilai.length;
  var resultNum = double.tryParse(total.toString())!.ceil();
  print('Hasil rata-rata : ${resultNum}');
}
