// Write a dart program to check if the number is odd or even.
import "dart:io";

bool isOdd(int number) {
  return number % 2 == 1;
}

void main() {
  print("Enter a number\n");
  int? number = int.tryParse(stdin.readLineSync()!);
  if (isOdd(number!)) {
    print('The number $number is odd');
  } else {
    print('The number $number is even');
  }
}
