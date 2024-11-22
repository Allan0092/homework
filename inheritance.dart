class Animal {
  void eat() {
    print("This animal eats food.");
  }
}

class Dog extends Animal {
  void bark() {
    print("The dog barks.");
  }
}

void main() {
  Dog myDog = Dog();
  myDog.eat();
  myDog.bark();
}
