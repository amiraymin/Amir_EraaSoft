import 'user_class.dart';

class student extends User {
  double? gpa;
  student({required super.name, required super.email, required super.image, required this.gpa});
}
