import 'dart:io';

void main() {
  // Basic Variables & Types
  String productName = "iPhone";
  int price = 135000;
  double rating = 4.5;
  bool isAvailable = true;

  print("$productName is of type ${productName.runtimeType}");
  print("$price is of type ${price.runtimeType}");
  print("$rating is of type ${rating.runtimeType}");
  print("$isAvailable is of type ${isAvailable.runtimeType}");

  // // Dynamic Variable
  dynamic value;

  value = "Hello";
  print("Value: $value, Type: ${value.runtimeType}");

  value = 123;
  print("Value: $value, Type: ${value.runtimeType}");

  // // 1) List Task

  List<String> favoriteCars = [
    "Toyota Corolla",
    "Honda Civic",
    "Suzuki Swift",
    "Kia Sportage",
    "Hyundai Elantra"
  ];

  favoriteCars.add("MG HS");

  print("My Favorite Cars:");
  for (String car in favoriteCars) {
    print("- $car");
  }

  // // 2) List Task

  List<int> numbers = [5, 12, 8, 20, 3, 10];

  int sum = numbers.reduce((a, b) => a + b);

  print("List: $numbers");
  print("Length: ${numbers.length}");
  print("First: ${numbers.first}");
  print("Last: ${numbers.last}");
  print("Sum: $sum");

  // // 3 List Task

  List<String> names = ["Ali", "Ayesha", "Mohsin", "Sara", "Mustafa", "Tariq"];

  print("Names longer than 5 characters:");
  for (String name in names) {
    if (name.length > 5) {
      print(name);
    }
  }

//  1) Map Task
  Map<String, String> login = {'username': 'admin', 'password': 'admin1'};

  stdout.write("Enter username: ");
  String? enteredUsername = stdin.readLineSync();

  stdout.write("Enter password: ");
  String? enteredPassword = stdin.readLineSync();

  if (enteredUsername == login['username'] &&
      enteredPassword == login['password']) {
    print("Valid User");
  } else {
    print("Invalid User");
  }

  // 2) Map Task

  Map<String, Map<String, dynamic>> movies = {
    'Inception': {
      'director': 'Christopher Nolan',
      'year': 2010,
      'ratings': [8.8, 9.0, 8.7, 9.1]
    },
    'Titanic': {
      'director': 'James Cameron',
      'year': 1997,
      'ratings': [7.5, 8.0, 7.8, 7.9]
    },
    'The Godfather': {
      'director': 'Francis Ford Coppola',
      'year': 1972,
      'ratings': [9.2, 9.5, 9.4, 9.3]
    }
  };

  movies.forEach((title, details) {
    List<double> ratings = details['ratings'];
    double avgRating = ratings.reduce((a, b) => a + b) / ratings.length;
    if (avgRating >= 8.0) {
      print(
          "$title (Director: ${details['director']}, Year: ${details['year']}), Average Rating: ${avgRating.toStringAsFixed(2)}");
    }
  });

  //1) Loop Task

  stdout.write("Enter a number for multiplication table: ");
  int number = int.parse(stdin.readLineSync()!);
  int i = 1;
  while (i <= 10) {
    print("${number} x $i = ${number * i}");
    i++;
  }

  //2) Loop Task

  int number1 = 10;

  while (number1 >= 1) {
    print(number1);
    number1--;
  }

// 1)Function Task

  int findLargest(List<int> nums) {
    int largest = nums[0];
    for (int i = 1; i < nums.length; i++) {
      if (nums[i] > largest) {
        largest = nums[i];
      }
    }
    return largest;
  }

  List<int> numbers = [4, 10, 1, 16, 14, 22, 18, 55, 7];
  int largestNumber = findLargest(numbers);
  print("Largest number is: $largestNumber");

// 2) Function task

  void checkNumber(double num) {
    if (num > 0) {
      print("The number is positive.");
    } else if (num < 0) {
      print("The number is negative.");
    } else {
      print("The number is zero.");
    }
  }

  stdout.write("Enter a number: ");
  double number2 = double.parse(stdin.readLineSync()!);

  checkNumber(number2);
}
