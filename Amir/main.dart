import 'user_class.dart';
import 'student_class.dart';

void main() {
  User user1 = User(name: "Amir", email: "amir@example.com", image: "amir.jpg");

  user1.setpass(
    "1234",
  ); // Set the private variable _pass using the setter method
  print("User Name: ${user1.name}");
  // print("User pass: ${user1.pass}"); // This will not work as _pass is private, you need to make a getter method to access it
  print(
    'User pass: ${user1.getpass()}',
  ); // Access the private variable _pass using the getter method

  // ignore: unused_local_variable
  User user2 = User(
    name: "Ahmed",
    email: "ahmed@example.com",
    image: "ahmed.jpg",
  );
  // ignore: unused_local_variable
  User user3 = User(name: "Ali", email: "ali@example.com", image: "ali.jpg");

  print("user1 id ${user1.id}");
  print("user2 id ${user2.id}");
  print("user3 id ${user3.id}");

  user1.changePass(oldPass: "1234", newPass: "48797");
  print(
    "pass of user1: ${user1.getpass()}",
  ); // Access the private variable _pass using the getter method

  // print("user2 id ${user2.id}"); // u can not access the private variable _id directly using this way anymore because it is private
  // id is 1 because it is a public variable and it is incremented in the constructor,
  //so every time we create a new object of the class student, the id will be incremented by 1.
  // but the id is not unique for each object, it is shared among all objects of the class student.
  // so if we create 2 objects of the class student, the id will be 1 for both objects.
  // to make the id unique for each object, we can make it a "static variable" and increment it in the constructor.
  // static int id = 0;
  // then in the constructor we can increment it by 1 and assign it to the id of the object.

  // Inheritance (extends)
  // superclass (parent class) and subclass (child class)
  // its an OOP concept that allows one class to inherit the properties and methods of another class.
  // It helps us avoid repeating common code and promotes code reuse.

  // In this example, the class student is a subclass of the class User,
  // which means that the class student inherits the properties and methods of the class User.
  student s1 = student(
    name: "khaled",
    email: "khaled@example.com",
    image: "khaled.jpg",
    gpa: 2.7,
  );
  print("Student Name: ${s1.name}");
  print("Student Email: ${s1.email}");
  print("Student Image: ${s1.image}");
  print("Student GPA: ${s1.gpa}");

// polymorphism
  // polymorphism is an OOP concept that allows us to use a subclass object as a superclass object.
  // In this example, the class student is a subclass of the class User,
  // ignore: unused_local_variable
  User st1 = student(
    name: "khaled",
    email: "email@ example.com",
    image: "image.jpg",
    gpa: 3.5,
  );
}
