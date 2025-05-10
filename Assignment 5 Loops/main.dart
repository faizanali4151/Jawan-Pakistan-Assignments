import 'dart:io';

void main() {
  // 1) Create a Dart program that checks if a given string is empty or not using if-else statements.

  stdout.write("Enter a string: ");
  String input = stdin.readLineSync()!;

  if (input.isEmpty) {
    print("The string is empty.");
  } else {
    print("The string is not empty.");
  }

  // 2) Implement Dart code to print the multiplication table of a given number using a while loop.

  stdout.write("Enter a number for multiplication table: ");
  int number = int.parse(stdin.readLineSync()!);
  int i = 1;
  while (i <= 10) {
    print("${number} x $i = ${number * i}");
    i++;
  }

//  3) Write a program that counts the number of vowels in a given string using a for loop and if-else condition

  stdout.write("Enter a vovel string: ");
  String input1 = stdin.readLineSync()!.toLowerCase();

  int vowelCount = 0;

  for (int i = 0; i < input1.length; i++) {
    String char = input1[i];
    if (char == 'a' ||
        char == 'e' ||
        char == 'i' ||
        char == 'o' ||
        char == 'u') {
      vowelCount++;
    }
  }

  // print("Number of vowels: $vowelCount");

// 4) Create a Dart program that checks if a given number is positive, negative, or zero using if-else statements
  stdout.write("Enter a number: ");
  double number = double.parse(stdin.readLineSync()!);

  if (number > 0) {
    print("The number is positive.");
  } else if (number < 0) {
    print("The number is negative.");
  } else {
    print("The number is zero.");
  }

  // 5) Write a Dart program to calculate the factorial of a given number using a while loop.

  stdout.write("Enter a number: ");
  int number = int.parse(stdin.readLineSync()!);

  int factorial = 1;
  int i = 1;

  while (i <= number) {
    factorial *= i;
    i++;
  }

  print("Factorial of $number is: $factorial");

// 6) Implement Dart code to print the first 10 natural numbers in reverse order using a while loop.

  int number = 10;

  while (number >= 1) {
    print(number);
    number--;
  }

//7) Implement Dart code to print the squares of numbers from 1 to 5 using a do-while loop

  int number = 1;

  do {
    print("Square of $number is: ${number * number}");
    number++;
  } while (number <= 5);

// 8) Write a Dart program to print even numbers from 1 to 20 using a do-while loop

  int number = 2;

  do {
    print(number);
    number += 2;
  } while (number <= 20);

  // 9)Implement a code that finds the largest element in a list using a for loop.

  List<int> numbers = [4, 10, 1, 16, 14, 22, 18, 55, 7];

  int largest = numbers[0];

  for (int i = 1; i < numbers.length; i++) {
    if (numbers[i] > largest) {
      largest = numbers[i];
    }
  }
  print("Largest element: $largest");

  // 10) Write a Dart program to find the sum of all even numbers from 1 to 100 using a for loop.

  stdout.write("Enter a number: ");
  int number = int.parse(stdin.readLineSync()!);

  print("Multiplication table of $number:");

  for (int i = 1; i <= 10; i++) {
    print("$number x $i = ${number * i}");
  }

// 11) Write a program that takes a list of numbers as input and prints the numbers greater than 5 using a for loop and if-else condition

  stdout.write("Enter a list of numbers");
  List<String> input = stdin.readLineSync()!.split(' ');

  for (String str in input) {
    int number = int.parse(str);
    if (number > 5) {
      print(number);
    }
  }

// 12) . Write a program to make such a pattern like a right angle triangle with a number which will repeat a number in a row. The pattern like :

  stdout.write("Enter the number : ");
  int n = int.parse(stdin.readLineSync()!);

  for (int i = 1; i <= n; i++) {
    for (int j = 1; j <= i; j++) {
      stdout.write(i);
    }
    print(" ");
  }

//13) Write a Dart program to calculate the sum of odd numbers from 1 to 50 using a do-while loop

  int number = 1;
  int sum = 0;

  do {
    if (number % 2 != 0) {
      sum += number;
    }
    number++;
  } while (number <= 50);

  print("Sum of odd numbers from 1 to 50 is: $sum");

//14) Create Dart code to calculate the average of numbers in a list using a do-while loop

  List<int> numbers = [10, 20, 30, 40, 50];
  int i = 0;
  int sum = 0;

  do {
    sum += numbers[i];
    i++;
  } while (i < numbers.length);

  double average = sum / numbers.length;
  print("Average: $average");
}
