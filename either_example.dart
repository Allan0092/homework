import 'package:dartz/dartz.dart';

class Arithmetic {
  final int first;
  final int second;

  Arithmetic(this.first, this.second);

  int substract() {
    return first - second;
  }

  Either<String, int> add() {
    try {
      return Right(first + second);
    } catch (e) {
      return Left(e.toString());
    }
  }

  Either<String, int> divide() {
    try {
      return Right(first ~/ second);
    } catch (e) {
      return Left(e.toString());
    }
  }
}

void main() {
  Arithmetic arithmetic = Arithmetic(5, 0);
  print("Subtract: ${arithmetic.substract()}");
  // print("Addition: ${arithmetic.add()}");
  var result = arithmetic.add();
  result.fold((left) => print("Error occcured: $left"),
      (right) => print("Additon is: $right"));

  var result2 = arithmetic.divide();
  result2.fold((left) => print("Error occcured: $left"),
      (right) => print("division is: $right"));
}
