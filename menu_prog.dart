import 'dart:io';

void main() {
  String exitChoice = "Y";
  do {
    print(
        "===================MENU DRIVEN==================\n1. Add\n2. Subtract\n3. Multiply\nEnter your choice (1-3) :");
    String choice = stdin.readLineSync()!;

    print("Enter the first number");
    int num1 = int.parse(stdin.readLineSync()!);
    print("Enter the second nuumber");
    int num2 = int.parse(stdin.readLineSync()!);

    switch (choice) {
      case "1":
        print("sum of $num1 and $num2 is ${num1 + num2}");
      case "2":
        print("difference of $num1 and $num2 is ${num1 - num2}");
      case "3":
        print("product of $num1 and $num2 is ${num1 * num2}");
    }

    print("Do you want to continue (Y/N): ");
    exitChoice = stdin.readLineSync()!;
  } while (exitChoice == "Y");
}
