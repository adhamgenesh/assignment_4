
class BankAccount {
  int accountID;
  double balance;

  BankAccount(this.accountID, this.balance);

  BankAccount.empty()
      : accountID = 0,
        balance = 0;

  void deposit(double amount) {
    if (amount > 0) {
      balance += amount;
      print("Deposit successful");
    }
  }

  void withdraw(double amount) {
    if (amount > 0 && balance >= amount) {
      balance -= amount;
      print("Withdraw successful");
    } else {
      print("Insufficient balance");
    }
  }

  void display() {
    print("Account ID: $accountID");
    print("Balance: $balance");
  }
}

void main() {
  BankAccount account = BankAccount(101, 1000);

  account.deposit(500);
  account.withdraw(200);

  account.display();

  BankAccount account2 = BankAccount.empty();
  account2.display();
}
