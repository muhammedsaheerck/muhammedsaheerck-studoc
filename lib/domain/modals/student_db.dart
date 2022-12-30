import 'package:hive_flutter/adapters.dart';
part 'student_db.g.dart';
 
@HiveType(typeId: 1)
class StudentModal {
  @HiveField(0)
  int id;

  @HiveField(1)
  final String name;

  @HiveField(2)
  final String age;

  @HiveField(3)
  final String email;

  @HiveField(4)
  final String mobile;


  StudentModal({required this.id, required this.name, required this.age,required this.email,required this.mobile});
}