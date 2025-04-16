void main() {
  // 1.Covert Temperature from Fahrenheit to Celsius & Celsius to Fahrenheit as well

  double celsius = 25;
  double fahrenheit = 77;

// Convert Celsius to Fahrenheit
  double convertedToFahrenheit = (celsius * 9 / 5) + 32;
  print("$celsius C = $convertedToFahrenheit F");

// Convert Fahrenheit to Celsius
  double convertedToCelsiud = (fahrenheit - 32) * 5 / 9;
  print("$fahrenheit C = $convertedToCelsiud F");
}
