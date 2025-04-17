main() {
  //4.If the marks of Robert in three subjects are 78,45 and 62 respectively

  String name = "Robert";

  int enlishSubject = 78;
  int mathSubject = 45;
  int physicsSubject = 62;
  int totalMarks = enlishSubject + mathSubject + physicsSubject;
  double percentage = (totalMarks / 300) * 100;

  print("My name is $name");
  print("Marks in English: $enlishSubject");
  print("Marks in Math: $mathSubject");
  print("Marks in Physics: $physicsSubject");
  print("Total Marks: $totalMarks");
  print("Percent of $name is ${percentage.toStringAsFixed(2)}");
}
