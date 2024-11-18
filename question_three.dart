// Write a dart program to check whether a number is positive, negative, or zero.
import "dart:io";

void numberChecker(int number) {
  if (number > 0) {
    print("Positive number");
    return;
  }
  if (number < 0) {
    print("Negative number");
    return;
  }
  print("The number is zero");
}

void main() {
  print("Enter a number");
  int userInput = int.parse(stdin.readLineSync()!);
  numberChecker(userInput);
}
