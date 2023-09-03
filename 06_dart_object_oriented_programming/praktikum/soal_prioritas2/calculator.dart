class Calculator {
  double a, b;
  double total = 0;

  Calculator(this.a, this.b);

  double penjumlahan() {
    total = this.a + this.b;
    return total;
  }

  double pengurangan() {
    total = this.a - this.b;
    return total;
  }

  double perkalian() {
    total = this.a * this.b;
    return total;
  }

  double pembagian() {
    total = this.a / this.b;
    return total;
  }
}
