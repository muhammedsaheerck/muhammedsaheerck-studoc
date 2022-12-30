part of 'student_list_bloc.dart';

@freezed
class StudentListState with _$StudentListState {
  const factory StudentListState({
    // required final String name,
    // required final String age,
    // required final String email,
    // required final String mobile,
    required final List<StudentModal> studentModelList,
  }) = _Initial;

  factory StudentListState.initial() =>
      const StudentListState(studentModelList: []);
}
