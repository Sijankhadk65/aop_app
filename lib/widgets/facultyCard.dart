import 'package:flutter/material.dart';

import '../screens/subjectScreens.dart';

class facultyCard extends StatelessWidget{
  String facultyName , facultyDescription , headerImage , message;
  WidgetBuilder builder;

  facultyCard(this.facultyName,this.facultyDescription,this.headerImage,this.message,this.builder);

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
                "${this.message}"
              ),
              onPressed: (){
                this.builder == null ?
                Scaffold.of(context).showSnackBar(SnackBar(content: Text("Exam not available."),))
                :
                Navigator.push(context, MaterialPageRoute(
                  builder: this.builder
                ));
              },
            )
          ],
        ),
      );
    }
}