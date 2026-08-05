//////////////////////////////////////////
class Car {
  String? brand;
  String? model;
  int? year;

  Car(this.brand, this.model, this.year);

  displayInfo() => print("Brand: $brand - Model: $model - Year: $year");
}

//////////////////////////////////////////
class Student {
  String? name;
  int? age;
  int? grade;

  Student(this.name, this.age, this.grade);
  Student.guest([this.name = "Guest", this.age = 0, this.grade = 0]);

  showInfo() => print("Student $name Age: $age Grade: $grade");
}

//////////////////////////////////////////
class BankAccount {
  double? _balance;

  set balance(double balance) {
    if (balance > 0) {
      _balance = balance;
    } else
      print("Invalid balance");
  }

  get balance {
    return _balance;
  }
}

//////////////////////////////////////////
class Animal {
  String? name;

  makeSound() {}
}

class Dog extends Animal {
  @override
  makeSound() {
    print("Woof");
  }
}

class Cat extends Animal {
  @override
  makeSound() {
    print("Meow");
  }
}

///////////////////////////////////////
/**Task 5 — Constructors with Inheritance
Create a parent class called Person.
Properties:
name
age
Constructor initializes both properties.
Create a child class called Employee.
Additional Property:
salary

Use super to initialize the parent properties.
Create a function displayInfo() that prints:
Name
Age
Salary */
class Person {
  String? name;
  int? age;

  Person(this.age, this.name);
  displayInfo() {
    print("Name: $name Age: $age");
  }
}

class Employee extends Person {
  int? salary;

  Employee(super.age, super.name, this.salary);
  displayInfo() {
    print("Name: $name Age: $age Salary: $salary");
  }
}

/**Task 6 — Final Challenge (Encapsulation + Inheritance + Constructors)
Create a simple Library Management System.



Constructor initializes both.


Additional private property:
_isBorrowed
Functions:

Rules:
A borrowed book cannot be borrowed again.
A returned book cannot be returned twice.
Example Output:
Book: Flutter Basics
Author: John

Borrowed successfully.
This book is already borrowed.
Book returned successfully.
Current Status: Available */
 class Book {
  String title;
  String author;
  Book(this.title, this.author);
  borrowBook(){}
  returnBook(){}
  getStatus(){}
}

class BorrowedBook extends Book {
  bool _isBorrowed = false;

  BorrowedBook(super.title, super.author);

  borrowBook() {
    if (_isBorrowed == false) {
      print("Borrowed successfully");
      _isBorrowed = true;
    } else {
      print("This book is already borrowed");
    }
  }

  returnBook() {
    if (_isBorrowed == true) {
      print("Book returned successfully");
      _isBorrowed = false;
    } 
  }

  getStatus() {
    if (_isBorrowed == false) {
      print("Current Status: Available");
    } else {
      print("This book is already borrowed");
    }
  }
}
