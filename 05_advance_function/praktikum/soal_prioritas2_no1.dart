void main() {
  List<List<String>> dataKendaraan = [
    ['Mercedes', 'AMG-63'],
    ['BMW', 'X3'],
    ['VW', 'Tiguan'],
  ];

  Map<String, String> dataMap = {};

  for (var data in dataKendaraan) {
    String merk = data[0];
    String nama = data[1];
    dataMap[merk] = nama;
  }

  print(dataMap);
}
