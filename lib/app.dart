import 'package:flutter/material.dart';

import 'screens/homeScreen.dart';

import 'classes/colorScheme.dart';

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'AOP',
      theme: new ThemeData(
        primaryColor: AppColorScheme.primaryColor,
      ),
      home: new MyHomePage(title: 'AOP'),
    );
  }
}
