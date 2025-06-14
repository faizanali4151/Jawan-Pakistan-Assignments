import 'dart:io';
import 'dart:math';

void main() {
  //For Loop

  // for (var x = 1; x <= 50; x++) {
  //   print("x" * x); // Prints 'x' repeated x times
  // }

  // for (var x = 50; x >= 1; x--) {
  //   print("x" * x); // Prints 'x' repeated x times in reverse order
  // }

  //While Loop

  // int x = 50;
  // while (x <= 20) {
  //   print(x);
  //   x++;
  // }

  //Switch Statement

  // int day = 0;

  // switch (day) {
  //   case 0:
  //     print('Today is Sunday');
  //     return;
  //   case 1:
  //     print('Today is Monday');
  //     return;

  //   case 2:
  //     print('Today is Tuesday');
  //     return;

  //   case 3:
  //     print('Today is Wednesday');
  //     return;

  //   case 4:
  //     print('Today is Thursday');
  //     return;

  //   case 5:
  //     print('Today is Friday');
  //     return;

  //   case 6:
  //     print('Today is Saturday');
  //     return;
  // }

// // 1.Covert Temperature from Fahrenheit to Celsius & Celsius to Fahrenheit as well

//   double celsius = 25;
//   double fahrenheit = 77;

// // Convert Celsius to Fahrenheit
//   double convertedToFahrenheit = (celsius * 9 / 5) + 32;
//   print("$celsius C = $convertedToFahrenheit F");

// // Convert Fahrenheit to Celsius
//   double convertedToCelsiud = (fahrenheit - 32) * 5 / 9;
//   print("$fahrenheit C = $convertedToCelsiud F");

// //2.Length and breadth of a rectangle are 5 and 7 respectively.

//   int length = 5;
//   int breadth = 7;
//   int areaOfRectangle = length * breadth;

//   print('The area of the Rectangle is $areaOfRectangle');

// //3.Create a integer variable num = 7, Add 8 to the number and then divide it by 3.

//   int num = 7;

// //addition of 8
//   num += 8;

// //division by 3
//   num ~/= 3;

// //modulus with 5
//   num %= 5;

// //multiply result by 5

//   int reuslt = num * 5;

//   print("The final result is: $reuslt");

// //4.If the marks of Robert in three subjects are 78,45 and 62 respectively

//   String name = "Robert";

//   int enlishSubject = 78;
//   int mathSubject = 45;
//   int physicsSubject = 62;
//   int totalMarks = enlishSubject + mathSubject + physicsSubject;
//   double percentage = (totalMarks / 300) * 100;

//   print("My name is $name");
//   print("Marks in English: $enlishSubject");
//   print("Marks in Math: $mathSubject");
//   print("Marks in Physics: $physicsSubject");
//   print("Total Marks: $totalMarks");
//   print("Percent of $name is ${percentage.toStringAsFixed(2)}");

  // const a = 10;
  // const b = 13;
  // operations op = operations.add;

  // switch (op) {
  //   case operations.add:
  //     print("$a + $b = ${a + b}");
  //     break;

  //   case operations.substraction:
  //     print("$a - $b = ${a - b}");
  //     break;

  //   case operations.multiply:
  //     print("$a X $b = ${a * b}");
  //     break;

  //   case operations.divide:
  //     print("$a / $b = ${a / b}");
  //     break;
  //   default:
  // }

  // String name = "Faizan";
  // print(name);

  // int order = 31;

  // if (order < 30) {
  //   print("order shoulb be accepted");
  // } else {
  //   print("Order can't take");
  // }

  // String name = "Faizan";
  // int enlishSubject = 90;
  // int mathSubject = 70;
  // int physicsSubject = 78;
  // int urduSubject = 58;
  // int islamiat = 70;
  // int totalMarks =
  //     enlishSubject + mathSubject + physicsSubject + urduSubject + islamiat;
  // double percentage = (totalMarks / 500) * 100;

  // if (percentage >= 90) {
  //   print("Grade A");
  // } else if (percentage >= 80) {
  //   print("Grade B");
  // } else if (percentage >= 70) {
  //   print("Grade C");
  // } else if (percentage >= 60) {
  //   print("Grade D");
  // } else {
  //   print("Failed");
  // }
  // print("Marks in English: $enlishSubject");
  // print("Marks in Math: $mathSubject");
  // print("Marks in Physics: $physicsSubject");
  // print("Total Marks: $totalMarks");
  // print("Percent of $name is ${percentage.toStringAsFixed(2)}");

//  Q.1 Write a Dart program to check if a given number is positive, negative, or zero.

  // int number = 0;

  // if (number < 0) {
  //   print("$number is Negative");
  // } else if (number > 0) {
  //   print("$number is Positive");
  // } else {
  //   print("Number is Zero");
  // }

  // Q.2: Write a Dart program to check if a given number is even or odd.

  // int number = 1;

  // if (number % 2 == 0) {
  //   print("$number is Even Num");
  // } else {
  //   print("$number is Odd");
  // }

// Q3. Write a Dart program to determine if a given year is a leap year or not

  // int year = 2024;

  // if ((year % 4 == 0 && year % 100 != 0) || (year % 400 == 0)) {
  //   print("$year is a leap year.");
  // } else {
  //   print("$year is not a leap year.");
  // }

  // Q.4: Develop a Dart program to find the largest of three numbers.

  // int x = 60;
  // int y = 20;
  // int z = 50;

  // if (x >= y && x >= z) {
  //   print("The largest number is $x.");
  // } else if (y >= x && y >= z) {
  //   print("The largest number is $y.");
  // } else {
  //   print("The largest number is $z.");
  // }

  // Q.5: Write a Dart program to check if a given year is a century year (ends with 00).

  // int year = 2025;

  // if (year % 100 == 0) {
  //   print("$year is a century year.");
  // } else {
  //   print("$year is not a century year.");
  // }

  // Q.6: Write a Dart program to check if a given number is divisible by 5 and 11.

  // int number = 25;
  // if (number % 5 == 0 && number % 11 == 0) {
  //   print("$number is divisible by 5 and 11");
  // } else {
  //   print("$number is not divisible by 5 and 11");
  // }

  // Q.7: Write a Dart program to check if a given number is a multiple of 3 or 7.

  // int number = 2;

  // if (number % 3 == 0 || number % 7 == 0) {
  //   print("$number is a multiple of 3 or 7.");
  // } else {
  //   print("$number is not a multiple of 3 or 7.");
  // }

// Q.8: Make a marksheet , calculate percentage and complete.

  // String name = "Faizan";
  // int enlishSubject = 90;
  // int mathSubject = 70;
  // int physicsSubject = 78;
  // int urduSubject = 58;
  // int islamiat = 70;
  // int totalMarks = 500;
  // int obtainedMarks =
  //     enlishSubject + mathSubject + physicsSubject + urduSubject + islamiat;
  // double percentage = (obtainedMarks / totalMarks) * 100;

  // String grade = "";

  // if (percentage >= 90) {
  //   grade = "Grade A+";
  // } else if (percentage >= 80) {
  //   grade = "Grade A";
  // } else if (percentage >= 70) {
  //   grade = "Grade B";
  // } else if (percentage >= 60) {
  //   grade = "Grade C";
  // } else if (percentage >= 50) {
  //   grade = "Grade D";
  // } else {
  //   grade = "Failed";
  // }

  // print("\n========== MARKSHEET ==========");
  // print("Student Name: $name");
  // print("Marks in English: $enlishSubject");
  // print("Marks in Math: $mathSubject");
  // print("Marks in Physics: $physicsSubject");
  // print("Total Marks: $totalMarks");
  // print("Marks Obtained : $obtainedMarks");
  // print("Student Grade : $grade");
  // print("Percent : ${percentage.toStringAsFixed(2)}");
  // print("================================");

// Q.9: Write a program create two integer variables 'a' and 'b' and assign them any

  // int a = 30;
  // int b = 60;

  // if (a < 50 && a < b) {
  //   print("Both conditions are true.");
  // } else {
  //   print("Both conditions are not true.");
  // }

  // if (a < 50 || a > b) {
  //   print("At least one condition is true.");
  // } else {
  //   print("Condition are not");
  // }

//   final rng = Random();
//   while (true) {
//     stdout.write("Rock, paper or scissors? ");
//     final input = stdin.readLineSync();
//     if (input == "r" || input == "p" || input == "s") {
//       final playerMove;
//       if (input == "r") {
//         playerMove = Move.rock;
//       } else if (input == "s") {
//         playerMove = Move.scissors;
//       } else {
//         playerMove = Move.scissors;
//       }
//       final random = rng.nextInt(3);
//       final aiMove = Move.values[random];

//       print('You Played:$playerMove');
//       print("Ai Played:$aiMove");
//       if (playerMove == aiMove) {
//         print("It's a Draw");
//       } else if (playerMove == Move.rock && aiMove == Move.scissors ||
//           playerMove == Move.paper && aiMove == Move.rock ||
//           playerMove == Move.scissors && aiMove == Move.paper) {
//         print("You Won");
//       } else {
//         print('You Loose');
//       }
//     } else if (input == "q") {
//       break;
//     } else {
//       print("Invalid Input");
//     }
//   }
// }

// enum Move { rock, paper, scissors }

// enum operations {
//   add,
//   substraction,
//   multiply,
//   divide,
// }

// **************************************** LIST ********************************** //

  // List<dynamic> data = ["Foo", "bar", "bazz", "fofo"];
  // print(data.contains("Foo"));

  // Map<String, dynamic> data = {
  //   "name": "Faizan Manzoor",
  //   "age": 25,
  //   "nationality": "Pakistani",
  //   "address": {
  //     "city": "Karachi",
  //     "streetNo": "20 Street",
  //     "Province": "Sindh"
  //   },
  // };

  // data['address'].forEach((key, value) {
  //   print(value);
  // });

  // data['address'].putIfAbsent('Province', () => "Sindh");

  // print(data['address'].putIfAbsent('Province', () => "Sindh"));

  // for (var items in data) {
  //   if (items.toString().toLowerCase().startsWith("f")) {
  //     print(items);
  //   }
  // }

  // final data = [1, 3, 4, 5, 6];
  // final data2 = [...data];
  // final data3 = [...data2, if (data[4] >= 6) 7, 8, 9];

  // final data4 = [for (int i in data) i];
  // print(data4);

  // Map data = {
  //   "name": "faizan",
  //   "age": 26,
  // };

  // print(data);
  // data.addAll({"age": 27});
  // print(data);
  // data.putIfAbsent("age", () => 26);
  // data.putIfAbsent("nationality", () => "pakistani");
  // print(data);
  // List data = ["faizan", 26, "Pakistani"];
  // List keys = ["name", "age", "nationality"];

  // var mydata = Map.fromEntries(
  //   keys.asMap().entries.map(
  //         (entry) => MapEntry(entry.value, data[entry.key]),
  //       ),
  // );

  // print(mydata);

  // List<Map<String, dynamic>> data = [
  //   {"name": "Ali", "age": 30},
  // ];

  // final getdata = data
  //     .map((item) => {
  //           "name": item["name"],
  //           "age": item["age"],
  //         })
  //     .toList();

  // print(getdata);

  // List numList1 = [52, 86, 74, 36, 82, 21, 58, 0, 2];
  // List numList2 = [10, 6, 7, 2];
  // List numList3 = [102, 100, 5];
  // List numList4 = [...numList1, ...numList2, ...numList3];
  // print(numList4);

  // numList4.sort();
  // print(numList4);

  // var reverse = numList4.reversed;
  // print(reverse);
  // print("Lenght of list ${numList4.length}");

  // List data = [];

  // final getdata = (data.isEmpty
  //     ? [
  //         {"label": 'Policy Holder Name', "value": "aaaa"}
  //       ]
  //     : data
  //         .map((item) => [
  //               {"label": 'Policy Holder Name', "value": "aaaa"},
  //             ])
  //         .toList());

  // print(getdata);

  // int a = 0;
  // int b = 0;
  // int abc = a++ + b-- + --b - ++a;
  // print(abc);

  // String? input = stdin.readLineSync();

  // int number = int.tryParse(input ?? '') ?? 0;

  // for (var i = 1; i <= 10; i++) {
  //   if (i % 2 != 0) {
  //     print("$number x $i = ${number * i}");
  //   }
  // }

  // while (true) {
  //   stdout.write("Enter your email: ");
  //   String? email = stdin.readLineSync();

  //   stdout.write("Enter your password: ");
  //   String? password = stdin.readLineSync();

  //   if (email == "fkaaa567" && password == "1234") {
  //     print("Login successful!");
  //     break;
  //   } else {
  //     print("Invalid email or password. Please try again.");
  //   }
  // }

///////////// Function /////////////////

  // greet() {
  //   print("Hello");
  //   return "hello";
  // }

  // print(greet().runtimeType);
}
