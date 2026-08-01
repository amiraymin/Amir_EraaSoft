import 'class session 6.dart';

void main() {
  Person firstPerson = Person("Tamer", 55, "Cairo");
  Person secondPerson = Person("Gayar", 50, "Alex");

  firstPerson.printInfo();
  secondPerson.printInfo();
  ////////////////////////////////////////////////
  Rectangle area = Rectangle(5, 3.14);
  print(area.area());
  print(area.perimeter());
  ////////////////////////////////////////////////
  BankAccount acc1 = BankAccount.empty(owner: "Amir");
  acc1.deposit(1000);
  print("Balance of ${acc1.owner} is: ${acc1.balance}");
  acc1.withdraw(570);
  print("Balance of ${acc1.owner} is: ${acc1.balance}");
  ////////////////////////////////////////////////
  Student amir = Student(name: "Amir Ayman", grades: [20, 30, 40, 50]);
  print("average = ${amir.average()} Status is ${amir.status()}");
  ////////////////////////////////////////////////
  Product keyboard = Product( "keyboard",  2500 );
  Product mouse = Product.outOfStock( name: "mouse",  price:  300);
  Product monitor = Product( "monitor",  7500);

  print(keyboard.toString());
  print(mouse.toString());
  print(monitor.toString());
}
