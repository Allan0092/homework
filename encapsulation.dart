class Person {
  String _name = "";

  String get name => _name;

  set name(String value) {
    if (value.isNotEmpty) {
      _name = value;
    }
  }
}

void main() {
  Person person = Person();
  person.name = "Alice";
  print(person.name);
  person.name = "";
  print(person.name);
}
