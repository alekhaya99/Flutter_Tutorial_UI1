import 'package:flutter/material.dart';
import 'package:flutter_tutorial1/Pages/Landing_Page.dart';
import 'dart:ui';

import 'package:flutter_tutorial1/Setup/Setup.dart';
//With the help of dart UI we can get the physical Size of the device

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double Width_of_Screen=window.physicalSize.width;
    String title='House Rental App';
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: title,
      theme: ThemeData(primaryColor: COLOR_WHITE,accentColor: COLOR_DARK_BLUE,textTheme: Width_of_Screen<500?TEXT_THEME_SMALL:TEXT_THEME_DEFAULT ),
    home: LandingScreen(),
    );
  }
}
