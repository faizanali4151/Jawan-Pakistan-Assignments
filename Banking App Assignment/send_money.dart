import 'dart:io';
import 'globals.dart';

import 'utils.dart';

void sendMoney() {
  stdout.write("Enter sender's account number (or type 'exit' to go back): ");
  String? sender = stdin.readLineSync()?.trim();

  if (sender == null || sender.isEmpty) {
    print("❌ Sender account number is required.");
    return askToGoBack();
  }

  if (sender.toLowerCase() == 'exit') return askToGoBack();

  if (!accountBalances.containsKey(sender)) {
    print("❌ Sender account does not exist.");
    return askToGoBack();
  }

  stdout.write("Enter receiver's account number (or type 'exit' to go back): ");
  String? receiver = stdin.readLineSync()?.trim();

  if (receiver == null || receiver.isEmpty) {
    print("❌ Receiver account number is required.");
    return askToGoBack();
  }

  if (receiver.toLowerCase() == 'exit') return askToGoBack();

  if (!accountBalances.containsKey(receiver)) {
    print("❌ Receiver account does not exist.");
    return askToGoBack();
  }

  if (sender == receiver) {
    print("❌ Cannot send money to the same account.");
    return askToGoBack();
  }

  stdout.write("Enter amount to send (or type 'exit' to go back): ");
  String? amountStr = stdin.readLineSync()?.trim();

  if (amountStr == null || amountStr.isEmpty) {
    print("❌ Amount is required.");
    return askToGoBack();
  }

  if (amountStr.toLowerCase() == 'exit') return askToGoBack();

  double? amount = double.tryParse(amountStr);
  if (amount == null || amount <= 0) {
    print("❌ Invalid amount.");
    return askToGoBack();
  }

  if (accountBalances[sender]! < amount) {
    print("❌ Insufficient balance.");
    return askToGoBack();
  }


  accountBalances[sender] = accountBalances[sender]! - amount;
  accountBalances[receiver] = accountBalances[receiver]! + amount;


  accountLogs
      .putIfAbsent(sender, () => [])
      .add("📤 Sent PKR $amount to $receiver");
  accountLogs
      .putIfAbsent(receiver, () => [])
      .add("📥 Received PKR $amount from $sender");

  print("\n✅ Transfer Successful!");
  print("💸 Amount       : PKR ${amount.toStringAsFixed(2)}");
  print("📤 From Account : $sender");
  print("📥 To Account   : $receiver");
  askToGoBack();
}
