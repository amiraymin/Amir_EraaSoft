//////////////// Task 1 //////////////////
class Person {
  String name;
  int age;
  String city;

  // constructor
  Person(this.name, this.age, this.city);

  void printInfo() {
    print("Name: $name");
    print("Age: $age");
    print("City: $city");
  }
}

//////////////// Task 2 //////////////////
class Rectangle {
  double width;
  double height;

  Rectangle(this.width, this.height);

  double area() {
    return width * height;
  }

  double perimeter() {
    return 2 * (width + height);
  }
}

//////////////// Task 3 //////////////////
class BankAccount {
  String? owner;
  double balance = 0;

  // named constructor
  BankAccount.empty({required this.owner});

  // method to deposit money
  deposit(int amount) {
    balance += amount;
  }

  // method to withdraw money
  withdraw(int amount) {
    balance -= amount;
  }
}

//////////////// Task 4 //////////////////
class Student {
  String? name;
  List<double> grades = [];

  Student({this.name, required this.grades});

  double average() {
    double total = 0;
    for (int i = 0; i < grades.length; i++) {
      total += grades[i];
    }
    double average = total / grades.length;
    return average;
  }

  String status() {
    if (this.average() >= 60) {
      return "Pass";
    } else {
      return "Fail";
    }
  }
}

//////////////// Task 5 //////////////////
class Product {
  String? name;
  double? price;
  bool inStock;

  Product(this.name, this.price, [this.inStock = true]);

  Product.outOfStock({this.name, this.price, this.inStock = false});

   toString() {
    return 'name: $name, price: $price, inStock: $inStock';
  }

}
