// Write a dart program to check whether a character is a vowel or consonant.
import "dart:io";

bool isVowel(String letter) {
  List<String> vowel = ["a", "e", "i", "o", "u"];
  for (String v in vowel) {
    if (v == letter) {
      return true;
    }
  }
  return false;
}

void main() {
  print("Enter a letter");
  String userInput = stdin.readLineSync()!;
  if (isVowel(userInput)) {
    print("$userInput is a vowel");
  } else {
    print("$userInput is a consonant");
  }
}
