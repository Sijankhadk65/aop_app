import 'package:flutter/material.dart';

import '../widgets/facultyCard.dart';

class subjectScreen extends StatelessWidget{
  String facultyName;
  subjectScreen(this.facultyName);
  @override
    Widget build(BuildContext context) {
      // TODO: implement build
      return screenState(facultyName);
    }
}

class screenState extends StatefulWidget{
  String facultyName;
  screenState(this.facultyName);
  @override
    _screenState createState() {
      // TODO: implement createState
      return _screenState();
    }
}

class _screenState extends State<screenState>{
  @override
    Widget build(BuildContext context) {
      // TODO: implement build
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
              facultyCard("Subject 1","Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s","assets/pics/headers/physics.jpg","Take Exam",null),
              facultyCard("Subject 2","Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s","assets/pics/headers/medical.jpg","Take Exam",null),
              facultyCard("Subject 3","Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s","assets/pics/headers/law.jpg","Take Exam",null)
            ],
          ),
        ),
      );
    }
}