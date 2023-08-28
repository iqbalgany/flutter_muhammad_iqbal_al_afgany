void main() {
  Set<String> data1 = {
    'amuse',
    'tommy kaira',
    'spoon',
    'HKS',
    'litschfield',
    'amuse',
    'HKS',
  };

  Set<String> data2 = {
    'JS Racing',
    'amuse',
    'spoon',
    'spoon',
    'JS Racing',
    'amuse',
  };

  List listData1 = data1.toList();
  List listData2 = data2.toList();

  print('Data 1 : ${listData1}');
  print('Data 2 : ${listData2}');
}
