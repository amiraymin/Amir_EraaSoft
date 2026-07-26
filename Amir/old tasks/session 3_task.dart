void main() {
  // Q1. Print numbers from 1 to 20 using a for loop.
  int number = 0;
  for (int i = 0; i < 21; i++) {
    print(number + i);
  }

  // Q2. Make a list of your 5 favorite foods and print each one using a loop.
  List<String> myFavFood = ["pizza","Ro2a2","Bashamel","Sautéed vegetable","Gollash"];

  for (int i = 0; i < myFavFood.length; i++) {
    print(myFavFood[i]);
  }

  // Q3. Make a list of numbers [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]and print only the even numbers using a loop.
  List<int> numbers = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10];

  for (int i = 0; i < numbers.length; i++) {
    if (numbers[i].isEven) {
      print(numbers[i]);
    }
  }

  // Q4. Ask for a number (or just set a variable) and use switch to print the day name (1 = Monday, 2 = Tuesday, etc).
  int day = 2;
  switch (day) {
    case 1:
      print("Monday");
      break;
    case 2:
      print("Tuesday");
      break;
    case 3:
      print("Wednesday");
      break;
    case 4:
      print("Thursday");
      break;
    case 5:
      print("Friday");
      break;
    case 6:
      print("Saturday");
      break;
    case 7:
      print("Sunday");
      break;
    default:
      print("inValid number");
  }

  // Q5. Make a list of 5 numbers and use a loop to find the biggest one.
  int bigNum = 0;
  
  List<int> Num = [15, 5, -14, -100, 4798];
  
  for (int i = 0; i < Num.length; i++) {
    if (bigNum < Num[i]) {
      bigNum = Num[i];
    }
  }
  print(bigNum);

  // Q6. Use a while loop to print "Hello" 10 times.
  int i = 0;
  while (i < 10) {
    print("hello");
    i++;
  }

  /*
  Q7. Make a list of student names.
  Loop through it and use switch to print "First student", "Second student"
  etc. based on the index.
  */
  List<String> students = ["ahemd", "amira", "Anis", "Osama"];
  for (int i = 0; i < students.length; i++) {
    switch (i) {
      case 0:
        print("Fist Student : ${students[i]}");
      case 1:
        print("Second Student : ${students[i]}");
      case 2:
        print("Second Student : ${students[i]}");
      case 3:
        print("Second Student : ${students[i]}");
      default:
        print("invalid index");
    }
  }
}
