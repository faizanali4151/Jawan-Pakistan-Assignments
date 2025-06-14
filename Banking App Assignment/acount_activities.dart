import 'dart:io';
import 'globals.dart';
import 'main.dart';
import 'utils.dart';

void showAccountActivities() {
  while (true) {
    stdout.write(
        "📋 Enter your account number to view activities (or type 'back' / 'exit'): ");
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
      main();
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

    List<String>? logs = accountLogs[accNum];

    print("\n🧾 Account Activities for: $accNum");
    print("═══════════════════════════════════════");

    if (logs == null || logs.isEmpty) {
      print("📭 No transactions found for this account.");
    } else {
      for (int i = 0; i < logs.length; i++) {
        print("${i + 1}. ${logs[i]}");
      }
    }

    print("═══════════════════════════════════════");
    break;
  }

  askToGoBack();
}
