class BankAccount {
  double _balance;
  BankAccount(this._balance);
  double get balance => _balance;

  set balance(double amount) {
    if (amount >= 0) {
      _balance = amount;
    } else {
      print("balance is Snegative.");
    }
  }

  void deposit(double amount) {
    if (amount > 0) {
      balance += amount;
      print("deposited: $amount");
    } else {
      print("amount must be greater than zero");
    }
  }

  void withdraw(double amount) {
    if (amount > 0 && amount <= _balance) {
      _balance -= amount;
      print("withdrew: $amount");
    } else {
      print("insufficient funds ");
    }
  }
}

void main() {
  var account = BankAccount(100);
  account.deposit(50);
  account.withdraw(30);
  print("Balance: ${account.balance}");
}
