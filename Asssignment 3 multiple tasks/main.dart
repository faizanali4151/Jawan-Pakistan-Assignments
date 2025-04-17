main() {
//  Q.1 Write a Dart program to check if a given number is positive, negative, or zero.

  int number = 0;

  if (number < 0) {
    print("$number is Negative");
  } else if (number > 0) {
    print("$number is Positive");
  } else {
    print("Number is Zero");
  }

  // Q.2: Write a Dart program to check if a given number is even or odd.

  int _number = 1;

  if (_number % 2 == 0) {
    print("$_number is Even Num");
  } else {
    print("$_number is Odd");
  }

// Q3. Write a Dart program to determine if a given year is a leap year or not

  int year = 2024;

  if ((year % 4 == 0 && year % 100 != 0) || (year % 400 == 0)) {
    print("$year is a leap year.");
  } else {
    print("$year is not a leap year.");
  }

  // Q.4: Develop a Dart program to find the largest of three numbers.

  int x = 60;
  int y = 20;
  int z = 50;

  if (x >= y && x >= z) {
    print("The largest number is $x.");
  } else if (y >= x && y >= z) {
    print("The largest number is $y.");
  } else {
    print("The largest number is $z.");
  }

  // Q.5: Write a Dart program to check if a given year is a century year (ends with 00).

  int _year = 2025;

  if (_year % 100 == 0) {
    print("$_year is a century year.");
  } else {
    print("$_year is not a century year.");
  }

  // Q.6: Write a Dart program to check if a given number is divisible by 5 and 11.

  int number1 = 25;
  if (number1 % 5 == 0 && number1 % 11 == 0) {
    print("$number1 is divisible by 5 and 11");
  } else {
    print("$number1 is not divisible by 5 and 11");
  }

  // Q.7: Write a Dart program to check if a given number is a multiple of 3 or 7.

  int number2 = 2;

  if (number2 % 3 == 0 || number2 % 7 == 0) {
    print("$number2 is a multiple of 3 or 7.");
  } else {
    print("$number2 is not a multiple of 3 or 7.");
  }

// Q.8: Make a marksheet , calculate percentage and complete.

  String name = "Faizan";
  int enlishSubject = 90;
  int mathSubject = 70;
  int physicsSubject = 78;
  int urduSubject = 58;
  int islamiat = 70;
  int totalMarks = 500;
  int obtainedMarks =
      enlishSubject + mathSubject + physicsSubject + urduSubject + islamiat;
  double percentage = (obtainedMarks / totalMarks) * 100;

  String grade = "";

  if (percentage >= 90) {
    grade = "Grade A+";
  } else if (percentage >= 80) {
    grade = "Grade A";
  } else if (percentage >= 70) {
    grade = "Grade B";
  } else if (percentage >= 60) {
    grade = "Grade C";
  } else if (percentage >= 50) {
    grade = "Grade D";
  } else {
    grade = "Failed";
  }

  print("\n========== MARKSHEET ==========");
  print("Student Name: $name");
  print("Marks in English: $enlishSubject");
  print("Marks in Math: $mathSubject");
  print("Marks in Physics: $physicsSubject");
  print("Total Marks: $totalMarks");
  print("Marks Obtained : $obtainedMarks");
  print("Student Grade : $grade");
  print("Percent : ${percentage.toStringAsFixed(2)}");
  print("================================");

// Q.9: Write a program create two integer variables 'a' and 'b' and assign them any

  int a = 30;
  int b = 60;

  if (a < 50 && a < b) {
    print("Both conditions are true.");
  } else {
    print("Both conditions are not true.");
  }

  if (a < 50 || a > b) {
    print("At least one condition is true.");
  } else {
    print("Condition are not");
  }
}
