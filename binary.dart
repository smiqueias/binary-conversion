extension BinaryConversion on int {
  String toBinary() => this.toRadixString(2);
}

extension DecimalConversion on String {
  int toDecimal() => int.parse(this, radix: 2);
}

void main() {
  List<int> numbers = [112, 118, 150, 010];
  List<String> binaries = ["11001000", "01001011", "00001101", "00011000"];

  numbers.forEach((number) {
    print("$number em binário é igual a: ${number.toBinary()}");
  });
  print("=" * 50);
  binaries.forEach((binary) {
    print("$binary em decimal é igual a: ${binary.toDecimal()}");
  });
}
