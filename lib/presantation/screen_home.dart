import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:student/presantation/aboutus.dart';
import 'package:student/presantation/student_add.dart';
import 'package:student/presantation/student_list.dart';

class ScreenHome extends StatelessWidget {
  const ScreenHome({super.key});

  @override
  Widget build(BuildContext context) {
    // getAllStudent();
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          systemOverlayStyle:
              SystemUiOverlayStyle(statusBarColor: Colors.green.shade700),
          centerTitle: true,
          title: const Text(
            'Student List',
          ),
          backgroundColor: Colors.green.shade700,
          actions: [],
        ),
        body: const ScreenStudentList(),
        drawer: const MyDrawer(),
      ),
    );
  }
}

class MyDrawer extends StatelessWidget {
  const MyDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.only(bottom: 2),
        child: ClipRRect(
          borderRadius: const BorderRadius.only(
            bottomRight: Radius.circular(200),
          ),
          child: SizedBox(
            width: 250,
            child: Drawer(
              child: ListView(
                children: [
                  DrawerHeader(
                      decoration: BoxDecoration(
                        color: Colors.green.shade700,
                        borderRadius: const BorderRadius.only(
                            bottomLeft: Radius.circular(40),
                            bottomRight: Radius.circular(40)),
                      ),
                      child: Column(
                        children: [
                          Image.asset(
                            'asset/user (1).png',
                            width: 35,
                          ),
                          const SizedBox(
                            height: 5,
                          ),
                          Text('STUDOC',
                              style: GoogleFonts.slabo27px(
                                textStyle: const TextStyle(
                                  fontSize: 45,
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                ),
                              )),
                        ],
                      )),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        TextButton.icon(
                            onPressed: (() {
                              Navigator.of(context).pop();
                            }),
                            icon: const Icon(
                              Icons.home,
                              color: Colors.black,
                              size: 30,
                            ),
                            label: const Text(
                              'Home',
                              style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 20),
                            )),
                        const SizedBox(
                          height: 10,
                        ),
                        TextButton.icon(
                            onPressed: (() {
                              Navigator.of(context).push(MaterialPageRoute(
                                  builder: (context) => StudentAdd(
                                        type: ActionType.addStudent,
                                      )));
                            }),
                            icon: const Icon(
                              Icons.add_box,
                              color: Colors.black,
                              size: 30,
                            ),
                            label: const Text(
                              'Add Student',
                              style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 20),
                            )),
                        const SizedBox(
                          height: 10,
                        ),
                        TextButton.icon(
                            onPressed: (() {
                              print('object');
                              Navigator.of(context).push(MaterialPageRoute(
                                  builder: (context) => const AboutUs()));
                            }),
                            icon: Image.asset(
                              'asset/id-card.png',
                              width: 30,
                            ),
                            label: const Text(
                              'About Us',
                              style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 20),
                            )),
                        const SizedBox(
                          height: 40,
                        ),
                        const Divider(
                          thickness: 1,
                          color: Colors.black26,
                        ),
                        TextButton.icon(
                            onPressed: (() {
                              Navigator.of(context).pop();
                            }),
                            icon: Image.asset(
                              'asset/close.png',
                              width: 25,
                            ),
                            label: const Text(
                              'Close Menu',
                              style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 20),
                            )),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
        ));
  }
}
