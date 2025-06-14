import 'dart:io';
import 'globals.dart';
import 'utils.dart';

void checkBalance() {
  while (true) {
    stdout.write(
        "🔎 Enter account number to check balance (or type 'back' to go back / 'exit' to quit): ");
    String? accNum = stdin.readLineSync()?.trim();

    if (accNum == null || accNum.isEmpty) {
      print("❌ Account number cannot be empty.");
      continue;
    }

    if (accNum.toLowerCase() == 'exit') {
      print("👋 Exiting program. Goodbye!");
      exit(0);
    }

    if (accNum.toLowerCase() == 'back') {
      print("🔙 Returning to main menu...");
      return;
    }

    if (!RegExp(r'^\d{24}$').hasMatch(accNum)) {
      print("❌ Account number must contain exactly 24 digits (0-9 only).");
      continue;
    }

    if (!accountBalances.containsKey(accNum)) {
      print("❌ Account not found. Please try again.");
      continue;
    }

    String name = accountHolders[accNum] ?? "Unknown";
    double balance = accountBalances[accNum]!;

    print("\n📄 Account Summary");
    print("═══════════════════════════════════════");
    print("👤  Account Holder : $name");
    print("🔢  Account Number : $accNum");
    print("💳  Account Type   : Current Account");
    print("💰  Current Balance: PKR ${balance.toStringAsFixed(2)}");
    print("═══════════════════════════════════════");

    break;
  }

  askToGoBack();
}
