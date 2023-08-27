void main() async {
  print(await perkalian([4, 5, 6], 5));
}

Future<List> perkalian(List data, int pengali) async {
  List total = data;
  for (int i = 0; i < data.length; i++) {
    total[i] = data[i] * pengali;
  }
  return total;
}
