import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive_flutter/adapters.dart';

import 'package:student/presantation/screen_home.dart';
import 'package:student/presantation/student_add.dart';

import 'application/student_list/student_list_bloc.dart';
import 'domain/modals/student_db.dart';

void main() async {
  await Hive.initFlutter();
  if (!Hive.isAdapterRegistered(StudentModalAdapter().typeId)) {
    Hive.registerAdapter(StudentModalAdapter());
  }
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return BlocProvider<StudentListBloc>(
      create: (context) => StudentListBloc(),
      child: MaterialApp(
        
        navigatorKey:navigatorKey ,
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: const ScreenHome(),
        debugShowCheckedModeBanner: false,
      ),
    );
  }
}
