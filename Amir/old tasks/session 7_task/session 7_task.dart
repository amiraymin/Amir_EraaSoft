//////////////// Task 1 //////////////////
class Car {
  String? brand;
  String? model;
  int? year;

  Car(this.brand, this.model, this.year);

  displayInfo() => print("Brand: $brand - Model: $model - Year: $year");
}

//////////////// Task 2 //////////////////
class Student {
  String? name;
  int? age;
  int? grade;

  Student(this.name, this.age, this.grade);
  Student.guest([this.name = "Guest", this.age = 0, this.grade = 0]);

  showInfo() => print("Student $name Age: $age Grade: $grade");
}

//////////////// Task 3 //////////////////
class BankAccount {
  double? _balance;

  set balance(double balance) {
    if (balance > 0) {
      _balance = balance;
    } else {
      print("Invalid balance");
    }
  }

  get balance {
    return _balance;
  }
}

//////////////// Task 4 //////////////////
class Animal {
  String? name;
  makeSound() {}
}

class Dog extends Animal {
  @override
  makeSound() {
    print("Dog: Woof");
  }
}

class Cat extends Animal {
  @override
  makeSound() {
    print("cat: Meow");
  }
}
//////////////// Task 5 //////////////////
class Person {
  String name;
  int age;

  Person(this.name, this.age);
  displayInfo() {
    print("Name: $name Age: $age");
  }
}

class Employee extends Person {
  int salary;

  Employee(super.age, super.name, this.salary);

  @override
  displayInfo() {
    print("Name: $name Age: $age Salary: $salary");
  }
}
//////////////// Task 6 //////////////////
class Book {
  String title;
  String author;
  Book(this.title, this.author);
  borrowBook() {}
  returnBook() {}
  getStatus() {}
}

class BorrowedBook extends Book {
  bool _isBorrowed = false;

  BorrowedBook(super.title, super.author);

   @override
  borrowBook() {
    if (_isBorrowed == false) {
      print("Borrowed successfully");
      _isBorrowed = true;
    } else {
      print("This book is already borrowed");
    }
  }

   @override
  returnBook() {
    if (_isBorrowed == true) {
      print("Book returned successfully");
      _isBorrowed = false;
    }
  }

   @override
  getStatus() {
    if (_isBorrowed == false) {
      print("Current Status: Available");
    } else {
      print("This book is already borrowed");
    }
  }
}
