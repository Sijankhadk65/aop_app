import 'package:flutter/material.dart';


import 'classes/colorScheme.dart';

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
            facultyCard("Engineering","Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s","assets/pics/headers/physics.jpg"),
            facultyCard("Medical","Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s","assets/pics/headers/medical.jpg"),
            facultyCard("Law","Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s","assets/pics/headers/law.jpg")
          ],
        ),
      ),
    );
  }
}


class facultyCard extends StatelessWidget{
  String facultyName , facultyDescription , headerImage;

  facultyCard(this.facultyName,this.facultyDescription,this.headerImage);

  @override
    Widget build(BuildContext context) {
      // TODO: implement build
      return Container(
        margin: EdgeInsets.all(15.0),
        height: 200.0,
        padding: EdgeInsets.all(15.0),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(5.0),
          image: DecorationImage(
            image: AssetImage("${this.headerImage}"),
              fit: BoxFit.cover,
              colorFilter: ColorFilter.mode(Color.fromARGB(130, 0, 0, 0),BlendMode.srcOver)
            ),
          boxShadow: <BoxShadow>[
            BoxShadow(
              color: Colors.grey,
              offset: Offset(1.0, 1.0),
              blurRadius: 10.0
            )
          ]
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              "${this.facultyName}",
              style: TextStyle(
              color: Colors.white,
                fontSize: 35.0,
                fontFamily: "Oswald"
              ),
            ),
            Divider(
              color: Colors.black,
            ),
            Text(
              "${this.facultyDescription}",
              style: TextStyle(
                color: Colors.white,
                fontSize: 10.0,
                fontFamily: "Playfair"
              ),
            ),
            RaisedButton(
              color: Colors.white,
              child: Text(
                "Take Exam"
              ),
              onPressed: (){
                Scaffold.of(context).showSnackBar(SnackBar(content: Text("Exam not available."),));
              },
            )
          ],
        ),
      );
    }
}