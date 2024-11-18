// Write a dart program to create a simple calculator that performs addition, subtraction, multiplication, and division.

import "dart:convert";
import "dart:io";

void sum(int firstNumber, int secondNumber) {
  print(
      "The sum of $firstNumber and $secondNumber is ${firstNumber + secondNumber}");
}

void subtract(int firstNumber, int secondNumber) {
  print(
      "The difference of $firstNumber and $secondNumber is ${firstNumber - secondNumber}");
}

void multiplication(int firstNumebr, int secondNumber) {
  print(
      "The product of $firstNumebr and $secondNumber is ${firstNumebr * secondNumber}");
}

void division(int firstNumber, int secondNumber) {
  print(
      "$firstNumber divided by $secondNumber is ${firstNumber / secondNumber}");
}

void main() {
  print("Enter the first number");
  int firstNumber = int.parse(stdin.readLineSync()!);

  print("Enter the second number");
  int secondNumber = int.parse(stdin.readLineSync()!);

  print(
      "================================\nEnter the operation to perform\n1)Addition\n2)Subtraction\n3)Multiplication\n4)Division\n5)All\n");
  int choice = int.parse(stdin.readLineSync()!);
  switch (choice) {
    case 1:
      sum(firstNumber, secondNumber);
    case 2:
      subtract(firstNumber, secondNumber);
    case 3:
      multiplication(firstNumber, secondNumber);
    case 4:
      division(firstNumber, secondNumber);
    case 5:
      sum(firstNumber, secondNumber);
      subtract(firstNumber, secondNumber);
      multiplication(firstNumber, secondNumber);
      division(firstNumber, secondNumber);
  }
}
