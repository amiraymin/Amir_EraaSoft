import 'dart:math';

void main() {
  rectangleArea(15, 5); // Task 1
  isPalindrome("Racecar");
  print(userProfile(name: "Ali"));
  print(filterNumbers([23, 53, 34, 61, 34, 232, 22], (number) => number.isOdd));
}

// ==================================================
// Task 1: Calculate Rectangle Area
//
// Goal:
// - Write a function that takes the width and height
//   of a rectangle as double parameters.
// - Return the area of the rectangle.
// - Call the function from main() and print the result.

void rectangleArea(int Length, int Width) {
  print("Rectangle Area =  ${Length * Width}");
}

// ==================================================

// ==================================================
// Task 2: Palindrome Checker
//
// Goal:
// - Write a function that receives a String.
// - Return true if the text is a palindrome.
// - Return false otherwise.
// - Ignore spaces and letter casing.
//
// Example:
// "Race car" → true
//
// Signature:
// bool isPalindrome(String text)
bool isPalindrome(String text) {
  String upper = text.toUpperCase();
  int frist = upper.codeUnitAt(0) + upper.codeUnitAt(1);
  int last =
      upper.codeUnitAt(upper.length - 1) + upper.codeUnitAt(upper.length - 2);
  if (frist == last) {
    return true;
  } else {
    return false;
  }
}
// ==================================================

// ==================================================
// Task 3: Named & Optional Parameters
//
// Goal:
// - Write a function that builds a user profile.
// - The name parameter is required.
// - age and city are optional named parameters.
// - Give them default values.
// - Return a formatted string.
//
// Example:
// Name: Ali, Age: 20, City: Cairo
String userProfile({required String name, int age = 404, String city = "404"}) {
  return "Name: $name, Age: $age, City: $city";
}
// ==================================================

// ==================================================
// Task 4: Filter Numbers
//
// Goal:
// - Write a function that takes:
//   • List<int>
//   • A function parameter
// - Return a new list containing only the numbers
//   that satisfy the given condition.
// - Use it twice:
//   • Filter even numbers.
//   • Filter numbers greater than 10.
//

  List<int> filterNumbers(List<int> nums,bool Function(int) test) {
  List<int> result = [];

  for (int number in nums) {
    if ( test(number) )
    {
      result.add(number);
    }
  }
  return result;
}
// ==================================================
