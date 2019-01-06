import 'package:flutter/material.dart';

import '../widgets/facultyCard.dart';

class SubjectScreen extends StatelessWidget{
  final String facultyName;
  SubjectScreen(this.facultyName);
  @override
    Widget build(BuildContext context) {
      return ScreenState(facultyName);
    }
}

class ScreenState extends StatefulWidget{
  final String facultyName;
  ScreenState(this.facultyName);
  @override
    _ScreenState createState() {
      return _ScreenState();
    }
}

class _ScreenState extends State<ScreenState>{
  @override
    Widget build(BuildContext context) {
      return Scaffold(
        appBar: AppBar(
          title: Text(
            "${widget.facultyName}",
            style: TextStyle(
              fontFamily: "Oswald",
              fontSize: 35.0
            ),
          ),
        ),
        body: Container(
          child: ListView(
            children: <Widget>[
              FacultyCard("Subject 1","Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s","assets/pics/headers/physics.jpg","Take Exam",null),
              FacultyCard("Subject 2","Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s","assets/pics/headers/medical.jpg","Take Exam",null),
              FacultyCard("Subject 3","Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s","assets/pics/headers/law.jpg","Take Exam",null)
            ],
          ),
        ),
      );
    }
}