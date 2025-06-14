import 'dart:io';
import 'globals.dart';
import 'utils.dart';

void createAccount() {
  String? accNum;

  while (true) {
    stdout.write(
        "Enter account number (exactly 24 digits) or type 'exit' to go back: ");
    accNum = stdin.readLineSync()?.trim();

    if (accNum == null || accNum.isEmpty) {
      print("❌ Input cannot be empty.");
      continue;
    }

    if (accNum.toLowerCase() == "exit") {
      askToGoBack();
      return;
    }

    if (accNum.length != 24 || !RegExp(r'^\d{24}$').hasMatch(accNum)) {
      print("❌ Account number must contain exactly 24 digits (0–9 only).");
      continue;
    }

    if (accountBalances.containsKey(accNum)) {
      print("❌ Account already exists with this number.");
      askToGoBack();
      return;
    }

    break;
  }
  String? name;
  while (true) {
    stdout.write("Enter account holder name (minimum 6 letters): ");
    name = stdin.readLineSync()?.trim();

    if (name == null || name.length < 6) {
      print("❌ Name must be at least 6 characters long.");
      continue;
    }

    if (!RegExp(r'^[a-zA-Z ]+$').hasMatch(name)) {
      print("❌ Name must contain only letters and spaces.");
      continue;
    }

    break;
  }

  String? dob;
  while (true) {
    stdout.write("📅 Enter date of birth (dd-mm-yyyy): ");
    dob = stdin.readLineSync()?.trim();

    if (dob == null || dob.isEmpty) {
      print("❌ Date of birth cannot be empty.");
      continue;
    }

    if (!RegExp(r'^\d{2}-\d{2}-\d{4}$').hasMatch(dob)) {
      print("❌ DOB must be in the format dd-mm-yyyy.");
      continue;
    }

    try {
      final parts = dob.split('-');
      final day = int.parse(parts[0]);
      final month = int.parse(parts[1]);
      final year = int.parse(parts[2]);

      if (day < 1 || day > 31) {
        print("❌ Day must be between 1 and 31.");
        continue;
      }

      if (month < 1 || month > 12) {
        print("❌ Month must be between 1 and 12.");
        continue;
      }

      final parsedDate = DateTime(year, month, day);
      final now = DateTime.now();

      if (parsedDate.isAfter(now)) {
        print("❌ DOB cannot be in the future.");
        continue;
      }
    } catch (e) {
      print("❌ Invalid date provided.");
      continue;
    }

    break;
  }

  // 🔹 Gender Input
  String? gender;
  while (true) {
    stdout.write("Enter gender (Male / Female / Other): ");
    gender = stdin.readLineSync()?.trim().toLowerCase();

    if (gender == null || gender.isEmpty) {
      print("❌ Gender cannot be empty.");
      continue;
    }

    if (!['male', 'female', 'other'].contains(gender)) {
      print("❌ Please enter a valid gender: Male, Female, or Other.");
      continue;
    }

    // Capitalize first letter
    gender = gender[0].toUpperCase() + gender.substring(1);
    break;
  }

  // Store required data
  accountBalances[accNum] = 0.0;
  accountHolders[accNum] = name;

  print("\n🎉 Account successfully created! 🎉");
  print("👤 Name: $name");
  print("🔢 Account Number: $accNum");
  print("🎂 Date of Birth: $dob");
  print("🚻 Gender: $gender");
  print("💰 Starting Balance: PKR 0.0");
  print("✅ Thank you for choosing our service!");

  askToGoBack();
}
