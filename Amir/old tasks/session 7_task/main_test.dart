import 'session 7_task.dart';

void main() {
  Car myCar = Car("Toyota", "Corolla", 2022);
  myCar.displayInfo();
  ///////////////////////////////////////
  Student s1 = Student("Anas", 22, 95);
  Student s2 = Student.guest();
  s1.showInfo();
  s2.showInfo();
  ///////////////////////////////////////
  BankAccount a1 = BankAccount();
  a1.balance = 500;
  print(a1.balance);
  a1.balance = -500;
  print(a1.balance);
  ///////////////////////////////////////
  Animal c = Cat();
  c.makeSound();
  Animal d = Dog();
  d.makeSound();
  ///////////////////////////////////////
  Person one = Employee("amir",23,  2300);
  one.displayInfo();
  ///////////////////////////////////////
  Book b1 = BorrowedBook("title", "author");
  b1.getStatus();
  b1.borrowBook();
  b1.borrowBook();
  b1.getStatus();
  b1.returnBook();
  b1.getStatus();
}
