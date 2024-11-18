// Write a dart program to generate multiplication tables of 1-9.

void multiplicationTable() {
  for (int i = 1; i < 10; i++) {
    for (int j = 1; j <= 10; j++) {
      print("$i X $j = ${i * j}");
    }
    print("---------------------------");
  }
}

void main() {
  multiplicationTable();
}
