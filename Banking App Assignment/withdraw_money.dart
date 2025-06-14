import 'dart:io';
import 'globals.dart';
import 'utils.dart';

void withdrawMoney() {
  stdout.write("🏦 Enter your account number to withdraw from: ");
  String? accNum = stdin.readLineSync()?.trim();

  if (accNum == null || accNum.isEmpty) {
    print("❌ Account number cannot be empty.");
    askToGoBack();
    return;
  }

  if (!accountBalances.containsKey(accNum)) {
    print("❌ Account does not exist.");
    askToGoBack();
    return;
  }

  stdout.write("💸 Enter amount to withdraw: ");
  String? amountStr = stdin.readLineSync();
  double? amount = double.tryParse(amountStr ?? "");

  if (amount == null || amount <= 0) {
    print("❌ Invalid amount.");
    askToGoBack();
    return;
  }

  if (accountBalances[accNum]! < amount) {
    print("❌ Insufficient balance.");
    askToGoBack();
    return;
  }

  accountBalances[accNum] = accountBalances[accNum]! - amount;

  accountLogs.putIfAbsent(accNum, () => []).add("💸 Withdrawn PKR $amount");

  print("\n✅ Withdrawal successful!");
  print(
      "💼 Your new account balance is: PKR ${accountBalances[accNum]!.toStringAsFixed(2)}");
  print("📌 Please keep your transaction details safe.");

  askToGoBack();
}
