import 'package:learn_dart_together/24_03_19/serialization/interface/serializable.dart';

class Employee implements Serializable {
  String name;
  int age;

  Employee({required this.name, required this.age});

  Employee.fromJson(Map<String, dynamic> json)
      : name = json['name'],
        age = json['age'];

  @override
  Map<String, dynamic> toMap() => {'name': name, 'age': age};
}
