import 'package:flutter/material.dart';
import 'package:gbmc_website/colors.dart';
import 'package:gbmc_website/views/home_view.dart';

import 'colors.dart';
import 'colors.dart';
import 'colors.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        // Define the default brightness and colors.
        brightness: Brightness.dark,
        primaryColor: ColorPalette.headerBlack,

        accentColor: ColorPalette.amaranth,

        // Define the default font family.
        fontFamily: 'SegoeUI',

        // Define the default TextTheme. Use this to specify the default
        // text styling for headlines, titles, bodies of text, and more.
        textTheme: TextTheme(
          headline1: TextStyle(
            fontSize: 54.0,
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
          button: TextStyle(fontSize: 24.0),
          bodyText2: TextStyle(fontSize: 14.0, fontFamily: 'Hind'),
        ),
      ),
      home: HomeView(),
    );
  }
}
