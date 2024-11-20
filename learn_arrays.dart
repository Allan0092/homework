import "dart:io";

void printList(List<int> items) {
  items.forEach(print);
}

int calculateEvenNums(List<int> items) {
  int count = 0;
  for (int item in items) {
    if (item % 2 == 0) count++;
  }

  return count;
}

int linearSearch(int target, List<int> items) {
  for (int i = 0; i < items.length; i++) {
    if (target == items[i]) {
      return i;
    }
  }
  return -1;
}

void workingWithMaps() {
  Map cityCountry = Map<String, String>();

  cityCountry['New York'] = 'USA';
  cityCountry['London'] = 'UK';
  cityCountry['Bern'] = 'Switzerland';
  cityCountry['Paris'] = 'France';

  cityCountry.forEach((city, country) {
    print("$city is in $country");
  });

  searchItemsInMap(cityCountry);
}

void searchItemsInMap(Map items) {
  print("Enter a city's name");
  String target = stdin.readLineSync()!;

  print("$target is in ${items[target]}");
}

void main() {
  workingWithMaps();

  // List<int> lstInt = [];
  // for (int i = 0; i < 5; i++) {
  //   print("enter ${i}th number to add to the list");
  //   lstInt.add(int.parse(stdin.readLineSync()!));
  // }
  // print('');

  // print(lstInt);
  // for (int item in lstInt) {
  //   print(item);
  // }

  // printList(lstInt);
  // print("Even numbers = ${calculateEvenNums(lstInt)}");
  // print("${linearSearch(8, lstInt)}");
}
