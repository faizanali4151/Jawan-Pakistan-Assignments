import 'dart:io';

import 'acount_activities.dart';
import 'create_account.dart';
import 'deposit_money.dart';
import 'send_money.dart';
import 'globals.dart';
import 'check_balance.dart';
import 'withdraw_money.dart';

void main() {
  while (true) {
    print("\n====================== 🏦 Banking System =====================");
    print("1. Create Account");
    print("2. Deposit");
    print("3. Withdraw");
    print("4. Check Balance");

    if (accountBalances.isNotEmpty) {
      print("5. Send Money");
      print("6. Account Activities");
    }

    print("7. Exit");

    stdout.write("Choose an option: ");
    String? choice = stdin.readLineSync();

    switch (choice) {
      case '1':
        createAccount();
        break;

      case '2':
        depositMoney();
        break;

      case '3':
        withdrawMoney();
        break;

      case '4':
        checkBalance();
        break;

      case '5':
        if (accountBalances.isNotEmpty) {
          sendMoney();
        } else {
          print(
              "⚠️ Please create at least one account to access this feature.");
        }
        break;

      case '6':
        if (accountBalances.isNotEmpty) {
          showAccountActivities();
        } else {
          print(
              "⚠️ Please create at least one account to access this feature.");
        }
        break;

      case '7':
        print("👋 Exiting... Thank you for using our bank.");
        exit(0);

      default:
        print("❌ Invalid option. Try again.");
    }
  }
}
