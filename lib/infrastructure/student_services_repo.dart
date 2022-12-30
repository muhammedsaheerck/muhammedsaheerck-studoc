import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';

import '../domain/modals/student_db.dart';
import '../domain/services/student_services.dart';

ValueNotifier<List<StudentModal>> studentListNotifier = ValueNotifier([]);

class StudentRepository implements StudentServices {
  @override
  Future<void> addStudent(StudentModal value) async {
    final studentDB = await Hive.openBox<StudentModal>('strudent_db');
    await studentDB.add(value);

    studentListNotifier.value.add(value);
    studentListNotifier.notifyListeners();
  }

  Future<void> getAllStudent() async {
    final studentDB = await Hive.openBox<StudentModal>('strudent_db');
    studentListNotifier.value.clear();
    // List<StudentModal> studentData = [];
    // studentData.addAll(studentDB.values);
    studentListNotifier.value.addAll(studentDB.values);
    studentListNotifier.notifyListeners();
    // return studentListNotifier.value;
  }

  Future<void> deleteStudent(int id) async {
    final studentDB = await Hive.openBox<StudentModal>('strudent_db');
    await studentDB.deleteAt(id);
    getAllStudent();
  }

  Future<void> updateStudent(index, StudentModal val) async {
    final studentDB = await Hive.openBox<StudentModal>('strudent_db');
    await studentDB.putAt(index, val);
    getAllStudent();
  }

  StudentModal? getStudentById(int id) {
    try {
      return studentListNotifier.value
          .firstWhere((Student) => Student.id == id);
    } catch (_) {
      return null;
    }
  }
}
