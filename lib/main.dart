import 'package:flutter/material.dart';
import 'package:meals_app/screens/home_page.dart';
import 'constants.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Meals app',
      theme: ThemeData(primaryColor: primaryColor),
      home: HomePage(),
      debugShowCheckedModeBanner: false,
    );
  }
}
