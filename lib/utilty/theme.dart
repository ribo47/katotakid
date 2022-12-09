import 'package:flutter/material.dart';

const Color white = Color(0xFFFFFFFF);
const Color grey = Color(0xFFBDBDBD);
const Color lightBlue = Color(0xFF73CCFF);
const Color blue = Color(0xFF3897F1);
const Color black = Color(0xFF474747);

class KKTheme {
  final globalTheme = ThemeData(
    backgroundColor: blue,
    textTheme: const TextTheme(
      bodyText1: TextStyle(
        fontSize: 40,
        color: white,
      ),
      bodyText2: TextStyle(
        fontSize: 40,
        color: white,
        fontWeight: FontWeight.w300,
      ),
      caption: TextStyle(
        fontSize: 14,
        color: white,
      ),
      button: TextStyle(
        color: blue,
        fontSize: 27,
      ),
    ),
  );
}
