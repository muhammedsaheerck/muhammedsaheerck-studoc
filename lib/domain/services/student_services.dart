import '../modals/student_db.dart';

abstract class StudentServices {
  Future<void> addStudent(StudentModal value);
}
