import 'dart:io';
import 'globals.dart';
import 'utils.dart';

void depositMoney() {
  stdout.write("Enter account number to deposit into: ");
  String? accNum = stdin.readLineSync()?.trim();

  if (accNum == null || !accountBalances.containsKey(accNum)) {
    print("❌ Account does not exist.");
    return askToGoBack();
  }

  stdout.write("Enter amount to deposit: ");
  String? amountStr = stdin.readLineSync()?.trim();
  double? amount = double.tryParse(amountStr ?? "");

  if (amount == null || amount <= 0) {
    print("❌ Invalid amount.");
    return askToGoBack();
  }

  accountBalances[accNum] = accountBalances[accNum]! + amount;

  accountLogs.putIfAbsent(accNum, () => []).add("💰 Deposited PKR $amount");

  print("\n🎉 Deposit Successful! 🎉");
  print("👤 Account Holder: ${accountHolders[accNum] ?? "Unknown"}");
  print("💳 Account Number: $accNum");
  print("💵 Deposited Amount: PKR ${amount.toStringAsFixed(2)}");
  print("💰 New Balance: PKR ${accountBalances[accNum]!.toStringAsFixed(2)}");
  print("✅ Thank you for using our service!");

  askToGoBack();
}
