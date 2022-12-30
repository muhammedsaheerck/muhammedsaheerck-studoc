import 'package:flutter/material.dart';
import 'package:student/presantation/student_add.dart';

class ScreenProfile extends StatelessWidget {
  final String name;
  final String age;
  final String email;
  final String mobile;

  const ScreenProfile(
      {super.key,
      required this.name,
      required this.age,
      required this.email,
      required this.mobile});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green.shade700,
        title: const Text('Profile'),
       
      ),
      body: Container(
        width: double.infinity,
        color: Colors.white,
        child: Column(
          children: [
            const SizedBox(
              height: 20,
            ),
            const CircleAvatar(
              backgroundImage: NetworkImage(
                  'https://www.clipartmax.com/png/middle/218-2183317_student-icon-boys-students-icon-png.png'),
              radius: 100,
            ),
            const SizedBox(
              height: 40,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Card(
                elevation: 2,
                color: Colors.blue.shade100,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Padding(
                  padding: const EdgeInsets.only(top: 10, left: 10, bottom: 80),
                  child: Column(
                    children: [
                      ProfileRowWidget(
                        content: name,
                        label: 'Name :',
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      ProfileRowWidget(
                        content: age,
                        label: 'Age :',
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      ProfileRowWidget(
                        content: email,
                        label: 'Email :',
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      ProfileRowWidget(
                        content: mobile,
                        label: 'Mobile :',
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    ));
  }
}

class ProfileRowWidget extends StatelessWidget {
  const ProfileRowWidget({
    Key? key,
    required this.content,
    required this.label,
  }) : super(key: key);

  final String content;
  final String label;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [TextWidgetBold(content: label), TextWidget(content: content)],
    );
  }
}

class TextWidget extends StatelessWidget {
  const TextWidget({
    Key? key,
    required this.content,
  }) : super(key: key);

  final String content;

  @override
  Widget build(BuildContext context) {
    return Text(
      content,
      style: const TextStyle(
          color: Colors.black, fontSize: 22, decoration: TextDecoration.none),
    );
  }
}

class TextWidgetBold extends StatelessWidget {
  final String content;
  const TextWidgetBold({
    Key? key,
    required this.content,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      content,
      style: const TextStyle(
          color: Colors.black,
          fontWeight: FontWeight.bold,
          fontSize: 22,
          decoration: TextDecoration.none),
    );
  }
}
