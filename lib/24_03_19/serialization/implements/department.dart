import 'dart:convert';
import 'package:learn_dart_together/24_03_19/serialization/implements/employee.dart';
import 'package:learn_dart_together/24_03_19/serialization/interface/serializable.dart';

class Department implements Serializable {
  String name;
  Employee leader;

  Department({required this.name, required this.leader});

  Department.fromJson(Map<String, dynamic> json)
      : name = json['name'],
        leader = Employee.fromJson(json['leader']);

  @override
  Map<String, dynamic> toMap() => {'name': name, 'leader': leader.toMap()};

  String toJson() => jsonEncode(toMap());
}
