import 'package:covid19_app/constants.dart';
import 'package:flutter/material.dart';
import './constants.dart';

import './screens/home_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Covid-19 Tracking App',
      theme: ThemeData(
          scaffoldBackgroundColor: kBackgroundColor,
          fontFamily: "Poppins",
          textTheme: TextTheme(bodyText1: TextStyle(color: kBodyTextColor))),
      home: HomeScreen(),
    );
  }
}
