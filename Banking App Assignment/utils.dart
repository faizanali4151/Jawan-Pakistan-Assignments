import 'dart:io';

import 'main.dart';

void askToGoBack() {
  while (true) {
    stdout.write("\nType 'back' to go to main menu or 'exit' to close: ");
    String? input = stdin.readLineSync()?.trim().toLowerCase();

    if (input == 'back') {
      print("🔄 Returning to main menu...");
      main();
      break;
    } else if (input == 'exit') {
      print("👋 Exiting program. Goodbye!");
      exit(0);
    } else {
      print("❌ Invalid input. Please type 'back' or 'exit'.");
    }
  }
}
