// Write a dart program to calculate the sum of natural numbers.
import "dart:io";

int sumOfNaturalNumbers(int number) {
  int sum = 1;
  for (int i = 2; i <= number; i++) {
    sum += i;
  }
  return sum;
}

void main() {
  print("Enter a number");
  int userInput = int.parse(stdin.readLineSync()!);
  print("The sum from 1 to $userInput is ${sumOfNaturalNumbers(userInput)}");
}
