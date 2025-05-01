void main() {
// Q.1) Create a list of names and print all names using list.

  List namesList = ["Ali", "Haider", "Zain", "Basit", "Faizan"];
  print("Names in List${namesList}");

// Q. 2) Create a list of Days and print only  Sunday

  List nameOfDay = [
    "Monday",
    "Tuesday",
    "Wednesday",
    "Thursday",
    "Friday",
    "Saturday",
    "Sunday",
  ];

  print("Today is ${nameOfDay[6]}");

// Q. 3)  create a list  of name, class, roll no, grade, percentage. And print.

  List studentDetail = ["Faizan", "12th", 987161, 'A', 76];

  print("Name: ${studentDetail[0]}");
  print("Class: ${studentDetail[1]}");
  print("Roll No: ${studentDetail[2]}");
  print("Grade: ${studentDetail[3]}");
  print("Percentage: ${studentDetail[4]}%");

// Q.4: Create a list of numbers & write a program to get the smallest & greatest number from a list.

  List<int> numbers = [20, 21, 15, 99, 110, 37, 19, 56, 25, 46, 78, 65];
  int smallestNumber = numbers.reduce((a, b) => a < b ? a : b);
  int greatestNumber = numbers.reduce((a, b) => a > b ? a : b);

  print("Smallest Number ${smallestNumber}");
  print("Greatest Number ${greatestNumber}");

// Q.5: Given a list of integers, write a dart code that returns the maximum value from the list.

  List listOfNumbers = [12, 45, 7, 89, 34];

  int maxValue = listOfNumbers.reduce((a, b) => a > b ? a : b);

  print("Maximum value: $maxValue");

// Q.6: Write a Dart code that takes in a list of strings and prints a new list with the elements in reverse order. The original list should remain
// unchanged.

  List originalList = ['apple', 'banana', 'cherry', 'date'];
  List reversedList = [...originalList.reversed];

  print("Original List: $originalList");
  print("Reversed List: $reversedList");

// Q.7: Implement a Dart code that uses the where() method to filter out negative numbers from a list of integers. The program should take in the original list as a parameter and print a new list containing only the positive numbers.

  List numberList = [21, 10, 50, -2, 8, -22, -67, 11, 50, 62, -18];
  List filterNegativeValue =
      numberList.where((element) => element < 0).toList();
  List filterPostiveValue = numberList.where((element) => element > 0).toList();

  print("Original List: $numberList");
  print("Negative Values:$filterNegativeValue");
  print("Positive Values:$filterPostiveValue");

// Q.8: remove all false values from below list by using removeWhere or retainWhere property.

  List<String> usersEligibility = [
    'John',
    'Alice',
    'eligible',
    'Mike',
    'Sarah',
    'Tom'
  ];

  usersEligibility.removeWhere((element) => element != 'eligible');
  print(usersEligibility);

// Q.9: Create a map named "car" with the following key-value pairs: "brand" as "Toyota", "color" as "Red", "isSedan" as true. Write Dart code to check if the car is a sedan and red in color. Print "Match" if both conditions are true, otherwise print "No match".

  Map car = {
    "brand": "Toyata",
    "color": "Red",
    "isSedan": true,
  };

  if (car["color"] == "Red" && car['isSedan'] == true) {
    print("Match");
  } else {
    print("No Match");
  }
}
