import 'package:flutter/material.dart';


import 'classes/colorScheme.dart';
import 'widgets/facultyCard.dart';
import 'screens/subjectScreens.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'Flutter Demo',
      theme: new ThemeData(
        primaryColor: colorScheme.primaryColor,
      ),
      home: new MyHomePage(title: 'AOP'),
    );
  }
}

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
        title: Text(
          "AOP",
          style: TextStyle(
            fontFamily: "Oswald",
            fontSize: 35.0
          )
        ),
      ),
      // drawer: Drawer(
      //   elevation: 100.0,
      //   child: Container(
      //     child: Column(
      //       children: <Widget>[
      //         Container(
      //           height: 200.0,
      //           color:Colors.blue
      //         ),
      //         Expanded(
      //           child: ListView(
                  
      //           ),
      //         )
      //       ],
      //     ),
      //   ),
      // ),
      body: Container(
        child: ListView(
          children: <Widget>[
            facultyCard("Engineering","Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s","assets/pics/headers/physics.jpg","See Subjects",(_) => subjectScreen("Engineering")),
            facultyCard("Medical","Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s","assets/pics/headers/medical.jpg","See Subjects",(_) => subjectScreen("Medical")),
            facultyCard("Law","Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s","assets/pics/headers/law.jpg","See Subjects",(_) => subjectScreen("Law"))
          ],
        ),
      ),
    );
  }
}


