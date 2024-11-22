class Rectriangle {
  final int width;
  final int height;

  Rectriangle({required this.width, required this.height});

  Rectriangle copyWith({int? width, int? height}) {
    return Rectriangle(
        width: width ?? this.width, height: height ?? this.height);
  }

  int areaOfRectriangle() {
    return width * height;
  }
}

class Person {
  final String fname;
  final String lname;
  final String address;

  Person({required this.fname, required this.lname, required this.address});

  Person copyWith({String? fname, String? lname, String? address}) {
    return Person(
        fname: fname ?? this.fname,
        lname: lname ?? this.lname,
        address: address ?? this.address);
  }

  void printAll() {
    print("${this.fname}");
    print("${this.lname}");
    print("${this.address}");
  }
}

void main() {
  // Rectriangle r = Rectriangle(width: 10, height: 20);
  // print("Area: ${r.areaOfRectriangle()}");
  // Rectriangle r2 = r.copyWith(width: 5);
  // print("Area of r2: ${r2.areaOfRectriangle()}");

  Person p = Person(fname: "allan", lname: "gautam", address: "Ktm");
  p.printAll();

  Person p2 = p.copyWith(address: "Lalitpur");
  p2.printAll();
}
