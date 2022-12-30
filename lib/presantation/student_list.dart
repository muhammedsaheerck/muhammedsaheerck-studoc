// import 'package:flutter/material.dart';

// import 'package:flutter_bloc/flutter_bloc.dart';
// import 'package:student/infrastructure/student_services_repo.dart';
// import 'package:student/presantation/student_add.dart';
// import 'package:student/presantation/student_profile.dart';

// import '../application/student_list/student_list_bloc.dart';

// class ScreenStudentList extends StatelessWidget {
//   const ScreenStudentList({super.key});

//   @override
//   Widget build(BuildContext context) {
//     print('object');
//     WidgetsBinding.instance.addPostFrameCallback((_) {
//       context.read<StudentListBloc>().add(GetStudentList());
//     });
//     print('object1');
//     return SafeArea(
//         child: Scaffold(
//             appBar: AppBar(title: const Text('Student List'), actions: [
//               IconButton(
//                   onPressed: () {}, icon: const Icon(Icons.search_rounded)),
//               IconButton(
//                   onPressed: () {
//                     Navigator.of(context).push(
//                         MaterialPageRoute(builder: (context) => StudentAdd()));
//                   },
//                   icon: const Icon(Icons.add)),
//             ]),
//             body: BlocBuilder<StudentListBloc, StudentListState>(
//               builder: (context, state) {
//                 print('object2');
//                 print(state.studentModelList);
//                 return ValueListenableBuilder(
//                   valueListenable: studentListNotifier,
//                   builder: (context, value, child) => ListView.separated(
//                       itemBuilder: ((context, index) {
//                         print('object3');
//                         final data = state.studentModelList[index];

//                         print(data);
//                         return ListTile(
//                           onTap: () {
//                             Navigator.of(context).push(MaterialPageRoute(
//                                 builder: ((context) => ScreenProfile(
//                                       age: data.age,
//                                       name: data.name,
//                                       email: data.email,
//                                       mobile: data.mobile,
//                                     ))));
//                           },
//                           leading: const CircleAvatar(
//                             backgroundImage: NetworkImage(
//                                 'https://www.clipartmax.com/png/middle/218-2183317_student-icon-boys-students-icon-png.png'),
//                           ),
//                           title: Text(data.name),
//                           trailing: IconButton(
//                               onPressed: () {
//                                 // deleteStudent(index)
//                                 context
//                                     .read<StudentListBloc>()
//                                     .add(DeleteStudent(id: index));
//                               },
//                               icon: const Icon(
//                                 Icons.delete,
//                                 color: Colors.red,
//                               )),
//                         );
//                       }),
//                       separatorBuilder: ((context, index) {
//                         return SizedBox(
//                           height: 10,
//                         );
//                       }),
//                       itemCount: state.studentModelList.length),
//                 );
//               },
//             )));
//   }
// }

import 'package:flutter/material.dart';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:student/domain/modals/student_db.dart';
import 'package:student/infrastructure/student_services_repo.dart';
import 'package:student/presantation/student_add.dart';
import 'package:student/presantation/student_profile.dart';

import '../application/student_list/student_list_bloc.dart';

class ScreenStudentList extends StatelessWidget {
  const ScreenStudentList({super.key});

  @override
  Widget build(BuildContext context) {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      context.read<StudentListBloc>().add(const GetStudentList());
    });

    return SafeArea(child: Scaffold(
        // appBar: AppBar(title: const Text('Student List'), actions: [
        //   IconButton(
        //       onPressed: () {}, icon: const Icon(Icons.search_rounded)),
        //   IconButton(
        //       onPressed: () {
        //         // Navigator.of(context).push(
        //         //     MaterialPageRoute(builder: (context) => StudentAdd()));
        //       },
        //       icon: const Icon(Icons.add)),
        // ]),
        body: BlocBuilder<StudentListBloc, StudentListState>(
      builder: (context, state) {
        // print('dfgdfgdfgdfgdfgdfg');
        // print(state.studentModelList);
        return ValueListenableBuilder(
          valueListenable: studentListNotifier,
          builder: (context, value, child) => ListView.separated(
              itemBuilder: ((context, index) {
                final data = state.studentModelList[index];

                return Padding(
                  padding: const EdgeInsets.only(left: 5, right: 5),
                  child: Card(
                    elevation: 1,
                    child: ListTile(
                      onLongPress: () {
                        Navigator.of(context).push(MaterialPageRoute(
                            builder: ((context) => StudentAdd(
                                  type: ActionType.editStudent,
                                  id: data.id,
                                  index: index,
                                ))));
                      },
                      // shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
                      onTap: () {
                        Navigator.of(context).push(MaterialPageRoute(
                            builder: ((context) => ScreenProfile(
                                  age: data.age,
                                  name: data.name,
                                  email: data.email,
                                  mobile: data.mobile,
                                ))));
                      },
                      leading: const CircleAvatar(
                        backgroundImage: NetworkImage(
                            'https://www.clipartmax.com/png/middle/218-2183317_student-icon-boys-students-icon-png.png'),
                      ),
                      title: Text(data.name),
                      trailing: IconButton(
                          onPressed: () {
                            showDialog(
                                context: context,
                                builder: ((context) {
                                  return AlertDialog(
                                    actionsAlignment: MainAxisAlignment.center,
                                    content: const Text(
                                        'Do you Delete This Data?',
                                        style: TextStyle(
                                            color: Colors.black,
                                            fontSize: 18,
                                            fontWeight: FontWeight.bold)),
                                    actions: [
                                      ElevatedButton(
                                          style: ElevatedButton.styleFrom(
                                              backgroundColor:
                                                  Colors.green.shade700),
                                          onPressed: (() {
                                            return Navigator.pop(context);
                                          }),
                                          child: Text('Cancel',
                                              style: GoogleFonts.nunito(
                                                  textStyle: Theme.of(context)
                                                      .textTheme
                                                      .headline6,
                                                  color: Colors.white))),
                                      ElevatedButton(
                                          style: ElevatedButton.styleFrom(
                                              backgroundColor:
                                                  Colors.green.shade700),
                                          onPressed: (() {
                                            context
                                                .read<StudentListBloc>()
                                                .add(DeleteStudent(id: index));

                                            Navigator.of(context).pop();
                                          }),
                                          child: Text('Delete',
                                              style: GoogleFonts.nunito(
                                                  textStyle: Theme.of(context)
                                                      .textTheme
                                                      .headline6,
                                                  color: Colors.white)))
                                    ],
                                  );
                                }));
                          },
                          icon: const Icon(
                            Icons.delete,
                            color: Colors.red,
                          )),
                    ),
                  ),
                );
              }),
              separatorBuilder: ((context, index) {
                return const SizedBox(
                  height: 5,
                );
              }),
              itemCount: state.studentModelList.length),
        );
      },
    )));
  }
}
