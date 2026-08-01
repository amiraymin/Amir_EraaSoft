class User {
  String? name;
  String? email;
  String? image;
  String? _pass; // private variable

  int _id = 0; // private variable for each "object" of the class student
  static int _StaticID = 0; 

  // static variable means it is shared "among all objects of the class" student,
  // and it is initialized to 0, and it will be incremented in the constructor,
  // so every time we create a new object of the class student, the _StaticID will be incremented by 1.
 

  // private variable _id is initialized to 0, and it will be incremented in the constructor,
  //so every time we create a new object of the class student, the _id will be incremented by 1.

  // main constructor
  User({this.name, this.email, this.image}) {
    _StaticID++; // increment the static variable _StaticID by 1, so it will be unique for each object of the class student.
    _id = _StaticID;  // update the _id for each object of the class student, so it will be unique for each object.
  }
  /* explaination: 
    when we create a new object of the class student, 
    the constructor will be called, 
    and the static variable "StaticID" will be incremented by 1,
    and the public variable _id will be assigned the value of _StaticID,
    so every time we create a new object of the class student, the _id will be incremented by 1.
    and we add "_" to the variable _id to make it private, so it can not be accessed by users outside the class,
    and we can access it by creating a getter method.
    */

  // named constructor
  User.NamedConstructor({
    required String name,
    required String email,
    required String image,
    required int pass,
  });

  /*
  setter vs getter 
  setter: a method that allows you to set the value of a private variable from outside the class.
  getter: a method that allows you to retrieve the value of a private variable from outside the class.
  */

  // setter method
  // to set the value of the private variable _pass
  setpass(String pass) {
    _pass = pass;
  }

  // getter method
  // to get the value of the private variable _pass
  getpass() {
    return _pass;
  }
  // getter method arrow syntax
  // getpass() => _pass;

  // another syntax for set and get
  /*
  get pass {
    return _pass;
  }
  */
  get id {
    return _id;
  }

  void changePass({required String oldPass, required String newPass}) {
    if (oldPass == _pass){
        _pass = newPass;
        print("Password changed successfully");
    } else {
      print("Old password is incorrect");
    }
  }
}