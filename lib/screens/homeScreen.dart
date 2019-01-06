import 'package:flutter/material.dart';

import './subjectScreens.dart';

import '../widgets/facultyCard.dart';

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _MyHomePageState createState() => new _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:
            Text("AOP", style: TextStyle(fontFamily: "Oswald", fontSize: 35.0)),
      ),
      body: Container(
        child: ListView(
          children: <Widget>[
            FacultyCard(
                "Engineering",
                "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s",
                "assets/pics/headers/physics.jpg",
                "See Subjects",
                (_) => SubjectScreen("Engineering")),
            FacultyCard(
                "Medical",
                "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s",
                "assets/pics/headers/medical.jpg",
                "See Subjects",
                (_) => SubjectScreen("Medical")),
            FacultyCard(
                "Law",
                "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s",
                "assets/pics/headers/law.jpg",
                "See Subjects",
                (_) => SubjectScreen("Law"))
          ],
        ),
      ),
    );
  }
}
