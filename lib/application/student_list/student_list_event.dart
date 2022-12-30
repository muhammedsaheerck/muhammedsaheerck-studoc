part of 'student_list_bloc.dart';

@freezed
class StudentListEvent with _$StudentListEvent {
  const factory StudentListEvent.addStudentList({
    required String name,
    required String age,
    required String email,
    required String mobile,
    // required StudentModal studentModal,
  }) = AddStudentList;

  const factory StudentListEvent.getStudentList() = GetStudentList;
  const factory StudentListEvent.deleteStudent({
    required int id,
  }) = DeleteStudent;
  const factory StudentListEvent.updateStudent({
    required int id,
    required int index,
    required String name,
    required String age,
    required String email,
    required String mobile,
    // required StudentModal studentModal,
  }) = UpdateStudent;
}
