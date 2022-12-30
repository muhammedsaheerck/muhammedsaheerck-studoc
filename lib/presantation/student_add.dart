import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:student/infrastructure/student_services_repo.dart';
import '../application/student_list/student_list_bloc.dart';

final GlobalKey<NavigatorState> navigatorKey = GlobalKey<NavigatorState>();

enum ActionType {
  addStudent,
  editStudent,
}

class StudentAdd extends StatelessWidget {
  final ActionType type;
  int? id;
  int? index;
  StudentAdd({super.key, required this.type, this.id, this.index});

  final _formKey = GlobalKey<FormState>();
  final _mobilecontroller = TextEditingController();
  final _namecontroller = TextEditingController();
  final _agecontroller = TextEditingController();
  final _emailcontroller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    if (type == ActionType.editStudent) {
      if (id == null) {
        Navigator.of(context).pop();
      }

      final student = StudentRepository().getStudentById(id!);
      if (student == null) {
        Navigator.of(context).pop();
      }

      _agecontroller.text = student!.age;
      _emailcontroller.text = student.email;
      _namecontroller.text = student.name;
      _mobilecontroller.text = student.mobile;
    }
    return Scaffold(
      body: Container(
          color: Colors.white,
          child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Form(
                key: _formKey,
                child: ListView(
                  children: [
                    Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Text(
                            'Registration',
                            style: TextStyle(
                                fontSize: 30, fontWeight: FontWeight.bold),
                          ),
                          const Padding(
                              padding: EdgeInsets.only(
                            top: 30,
                          )),
                          Padding(
                            padding: const EdgeInsets.only(bottom: 10.0),
                            child: TextFormField(
                              validator: (value) {
                                if (value == null || value.isEmpty) {
                                  return 'Please Fill The Name Field';
                                } else if (value.contains(RegExp(r'[0-9]'))) {
                                  return 'Please Enter Alphabets ';
                                } else if (value.length < 4) {
                                  return "Name must be minimum 4 charecters";
                                }
                                return null;
                              },
                              controller: _namecontroller,
                              decoration: const InputDecoration(
                                  border: OutlineInputBorder(),
                                  hintText: 'Name'),
                            ),
                          ),
                          TextFormField(
                            validator: (value) {
                              if (value == null || value.isEmpty) {
                                return 'Please Fill The Age Field';
                              } else if (value.contains(RegExp(r'[a-z-A-Z]'))) {
                                return 'Please Enter Numbers ';
                              } else if (value.length < 2 || value.length > 2) {
                                return 'Please Enter Minimum 2 numbers,does not support \n morthan 3 numbers ';
                              }
                              return null;
                            },
                            controller: _agecontroller,
                            decoration: const InputDecoration(
                                border: OutlineInputBorder(), hintText: 'Age'),
                            keyboardType: TextInputType.number,
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          TextFormField(
                            validator: (value) {
                              if (value == null || value.isEmpty) {
                                return 'Please Fill The Email Field';
                              } else if (!value.contains(RegExp(
                                  r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+"))) {
                                return 'Invalid Email id';
                              }
                              return null;
                            },
                            controller: _emailcontroller,
                            decoration: const InputDecoration(
                                border: OutlineInputBorder(),
                                hintText: 'Email'),
                            keyboardType: TextInputType.emailAddress,
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          TextFormField(
                            validator: (value) {
                              if (value == null || value.isEmpty) {
                                return 'Please Fill The Mobile Field';
                              } else if (value.length < 10 ||
                                  value.length > 10) {
                                return 'Invalid Mobile Number,should contain 10 numbers';
                              } else if (value.contains(RegExp(r'[a-z-A-Z]'))) {
                                return 'Does not support Alphabets';
                              }
                              return null;
                            },
                            controller: _mobilecontroller,
                            decoration: const InputDecoration(
                                border: OutlineInputBorder(),
                                hintText: 'Mobile'),
                            keyboardType: TextInputType.phone,
                          ),
                          ElevatedButton(
                            onPressed: (() {
                              switch (type) {
                                case ActionType.addStudent:
                                  addStudentButtonClicked(context: context);

                                  break;
                                case ActionType.editStudent:
                                  addStudentButtonClicked(
                                      context: context, id: id, index: index);

                                  break;
                              }
                            }),
                            child: const Text('Submit'),
                          )
                        ]),
                  ],
                ),
              ))),
    );
  }

  addStudentButtonClicked(
      {required BuildContext context, int? id, int? index}) {
    if (_namecontroller.text.isEmpty &&
        _agecontroller.text.isEmpty &&
        _emailcontroller.text.isEmpty &&
        _mobilecontroller.text.isEmpty) {
      ScaffoldMessenger.of(navigatorKey.currentContext!).showSnackBar(
          const SnackBar(
              duration: Duration(seconds: 1),
              content: Text('Please Fill The Form')));
    } else {
      if (_formKey.currentState!.validate()) {
        // print(_namecontroller.text);
        if (type == ActionType.addStudent) {
          context.read<StudentListBloc>().add(AddStudentList(
                name: _namecontroller.text,
                age: _agecontroller.text,
                email: _emailcontroller.text,
                mobile: _mobilecontroller.text,
              ));
        } else {
          context.read<StudentListBloc>().add(UpdateStudent(
                id: id!,
                index: index!,
                name: _namecontroller.text,
                age: _agecontroller.text,
                email: _emailcontroller.text,
                mobile: _mobilecontroller.text,
              ));
        }
        Navigator.of(navigatorKey.currentContext!).pop();

        ScaffoldMessenger.of(navigatorKey.currentContext!).showSnackBar(
            const SnackBar(content: Text('Successfully Registerd')));
        //goto list

        _namecontroller.clear();
        _agecontroller.clear();
        _emailcontroller.clear();
        _mobilecontroller.clear();
        // print(student);

      }
    }
  }
}
