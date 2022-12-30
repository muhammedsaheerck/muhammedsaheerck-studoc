import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../domain/modals/student_db.dart';
import '../../infrastructure/student_services_repo.dart';
part 'student_list_bloc.freezed.dart';

part 'student_list_event.dart';
part 'student_list_state.dart';

class StudentListBloc extends Bloc<StudentListEvent, StudentListState> {
  StudentListBloc() : super(StudentListState.initial()) {
    on<AddStudentList>((event, emit) async {
      // print(event.studentModal);
      final student = StudentModal(
          name: event.name,
          age: event.age,
          email: event.email,
          mobile: event.mobile,
          id: DateTime.now().millisecondsSinceEpoch);

      await StudentRepository().addStudent(student);
      emit(StudentListState(studentModelList: studentListNotifier.value));

      // emit(StudentListState(
      //     name: student.name,
      //     age: student.age,
      //     email: student.email,
      //     mobile: student.mobile));
    });
    on<GetStudentList>((event, emit) async {
      var data = await StudentRepository().getAllStudent();

      emit(state.copyWith(studentModelList: studentListNotifier.value));
    });

    on<DeleteStudent>((event, emit) async {
      await StudentRepository().deleteStudent(event.id);
      // emit()
    });
    on<UpdateStudent>((event, emit) async {
      final student = StudentModal(
        name: event.name,
        age: event.age,
        email: event.email,
        mobile: event.mobile,
        id: event.id,
      );
      await StudentRepository().updateStudent(event.index, student);
    });
  }
}
