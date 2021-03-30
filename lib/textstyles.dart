import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AppTextStyles {
  TextStyle get header => TextStyle(
        fontFamily: 'SegoeUI',
        fontWeight: FontWeight.bold,
        color: Colors.white,
        fontSize: 54,
        shadows: <Shadow>[
          Shadow(
            offset: Offset(10.0, 10.0),
            blurRadius: 3.0,
            color: Color.fromARGB(255, 0, 0, 0),
          ),
          Shadow(
            offset: Offset(10.0, 10.0),
            blurRadius: 8.0,
            color: Color.fromARGB(255, 0, 0, 0),
          ),
        ],
      );
}
