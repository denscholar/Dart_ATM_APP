import 'dart:io';

void main(List<String> arguments) {
  int balance = 0;

  showMenu();

  while (true) {
    stdout.write("Select option to start operation: ");
    String? choice = stdin.readLineSync();
    int? convertedChoice = int.tryParse(choice!);

    switch (convertedChoice) {
      case 1:
        print("Your current balance is: $balance");
        break;

      case 2:
        stdout.write("Deposit amount: ");
        String? deposit = stdin.readLineSync();
        int? convertedDeposit = int.tryParse(deposit!);
        balance += convertedDeposit!;
        print(
            "You deposited: $convertedDeposit.\nYour new balanace is: $balance");
        break;

      case 3:
        stdout.write("Withdrawal amount: ");
        String? withdrawal = stdin.readLineSync();
        int? convertedWithdrawal = int.tryParse(withdrawal!);
        if (convertedWithdrawal! <= balance) {
          balance -= convertedWithdrawal;
          print("widthrew: $withdrawal and your current balance is $balance");
        } else {
          print("you have an insufficient balance");
          break;
        }

      default:
        print('invalid operation:');
        break;
    }
  }
}

// Show the account menu
void showMenu() {
  print("========= MENU ===========");
  print("Press 1 for Balance");
  print("Press 2 for Deposit");
  print("Press 3 for Withdrawal");
  print("Any number to exit the program");
}
