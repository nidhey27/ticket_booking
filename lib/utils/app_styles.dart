import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

Color primary = const Color(0xFF687daf);

class Style {
  static Color primaryColor = primary;
  static const Color textColor = Color(0xFF3b3b3b);
  static const Color backgroundColor = Color(0xFFeeedf2);
  static const Color orangeColor = Color(0xFFF37B67);

  static TextStyle textStyle = const TextStyle(
      fontSize: 16, color: textColor, fontWeight: FontWeight.w500);
  static TextStyle headLineStyle = const TextStyle(
      fontSize: 26, color: textColor, fontWeight: FontWeight.bold);
  static TextStyle headLineStyle2 = const TextStyle(
      fontSize: 21, color: textColor, fontWeight: FontWeight.w500);
  static TextStyle headLineStyle3 = const TextStyle(
      fontSize: 17, color: Color(0xff9e9e9e), fontWeight: FontWeight.w500);
  static TextStyle headLineStyle4 = const TextStyle(
      fontSize: 14, color: Color(0xff9e9e9e), fontWeight: FontWeight.w500);
}
