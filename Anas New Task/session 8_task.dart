////////////////// Task 1 ////////////////////
/// 1- Create a Dart class called BankAccount with a private balance field.
/// Add a deposit() method that adds money,
/// a withdraw() method that prevents negative balance,
/// and a getter to read the balance.

class BankAccount {
  double _balance = 0.0;

  void deposit(double amount) {
    _balance += amount;
  }

  void withdraw(double amount) {
    if (_balance < amount) {
      print("You Do not have enogh money");
    } else {
      _balance -= amount;
    }
  }

  get balance {
    return _balance;
  }
}

/////////////// Task 2 /////////////////////**
/// 2- Write a Dart class called Student with private fields _name and _grade.
/// Add a setter for grade that only accepts values between 0 and 100.
/// Add getters for both fields.

class Student {
  String? _name;
  double _grade = 0;

  Student([this._name, this._grade = 0]);

  set setGrade(double amount) {
    if (amount >= 0 && amount < 101) {
      _grade = amount;
    } else {
      print("Invalid grade");
    }
  }

  get Grade {
    if (_grade > -1 && _grade < 101) {
      return _grade;
    } else {
      print("invalid grade");
    }
  }

  get Name {
    return _name;
  }
}
////////////////// Task 3 ////////////////////
/// 3- Create a base class Vehicle with fields brand and speed,
/// and a method describe() that prints them.
/// Then create a Car class that extends Vehicle and adds a doors field.
/// Override describe() to also print doors.

class Vehicle {
  String? brand;
  int? speed;

  Vehicle(this.brand, this.speed);

  describe() => print("$brand , $speed");
}

class Car extends Vehicle {
  int? doors;

  Car(super.brand, super.speed, this.doors);

  @override
  describe() => print("$brand , $speed, $doors");
}

////////////////// Task 4 ////////////////////
/// 4- Create a class Animal with a constructor that takes a name.
/// Create a Dog class that extends Animal and adds a breed field.
/// Use super to call the parent constructor.

class Animal {
  String? name;

  Animal(this.name);
}

class Dog extends Animal {
  String? breed;
  Dog(super.name, this.breed);
}

////////////////// Task 5 ////////////////////
/// 5- Create an abstract class Shape with an abstract method area() that returns a double.
/// Then create two classes: Rectangle (with width and height)
/// and Circle (with radius) that extend Shape and implement area().

abstract class Shape {
  double area();
}

class Circle extends Shape {
  double? radius;

  Circle(this.radius);

  @override
  area() {
    return radius! * radius! * 3.14;
  }
}

class Rectangle extends Shape {
  double? width;
  double? height;
  Rectangle(this.height, this.width);

  @override
  double area() {
    return width! * height!;
  }
}
////////////////// Task 6 ////////////////////
///  6- Create an abstract class Employee with fields name and salary, an abstract method work(),
///  and a concrete method introduce() that prints the name.
///  Create a Developer class that extends Employee and implements work().

abstract class Employee {
  String? name;
  int? salary;
  Employee(this.name, this.salary);

  void work();

  void introduce() {
    print(name);
  }
}

class Developer extends Employee {
  Developer(super.name, super.salary);

  @override
  void work() {
    print("the developer ${name} is working now");
  }
}

////////////////// Task 7 ////////////////////
///  7- Create an interface (abstract class) called Flyable with a method fly().
///  Create another interface Swimmable with a method swim().
///  Create a Duck class that implements both interfaces.

abstract class Flyable {
  void fly();
}

abstract class Swimmable {
  void swim();
}

class Duck implements Flyable, Swimmable {
  @override
  fly() {
    print("duck is flying");
  }

  @override
  swim() {
    print("duck is swimming");
  }
}

////////////////// Task 8 ////////////////////
/// 8- Create an interface called Drawable with methods draw() and getColor().
/// Create a Square class and a Triangle class that both implement Drawable differently.

abstract class Drawable {
  draw();
  getColor();
}

class Square implements Drawable {
  String color = "Red";
  draw() {
    print("Drawing a square");
  }

  getColor() {
    print("The Color is: $color");
  }
}

class Triangle implements Drawable {
  String color = "Blue";
  draw() {
    print("Drawing a Triangle");
  }

  getColor() {
    print("The Color is: $color");
  }
}

////////////////// Task 9 ////////////////////
/// 9- Write a complete Dart class called Counter with a private _count field starting at 0.
/// Add increment(), decrement() (never go below 0), reset(), and a getter count. Test it in main().

class Counter {
  int _count = 0;

  void increment() {
   _count++;
  }

  void decrement() {
    if (_count == 0) {
      print("number is 0, you can not decrement");
    } else {
      _count -- ;
    }
  }

  void reset() {
    _count = 0;
  }

  get getCount {
    return _count;
  }
}
