import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:velocity_x/velocity_x.dart';

class Mytheme {
  static ThemeData lightTheme(BuildContext context) => ThemeData(
      primarySwatch: Colors.lightGreen,
      fontFamily: GoogleFonts.poppins().fontFamily,
      hintColor: dartBluishColor,
      cardColor: Colors.white,
      canvasColor: creamColor,
      focusColor: dartBluishColor,
      appBarTheme: AppBarTheme(
        backgroundColor: Colors.lightGreen,
        iconTheme: IconThemeData(color: Colors.black),
      ));

  static ThemeData darkTheme(BuildContext context) => ThemeData(
      brightness: Brightness.dark,
      primarySwatch: Colors.lightGreen,
      fontFamily: GoogleFonts.poppins().fontFamily,
      hintColor: Colors.white,
      cardColor: Colors.black,
      canvasColor: darkCreamColor,
      focusColor: lightBluishColor,
      appBarTheme: AppBarTheme(
        backgroundColor: Colors.black,
        iconTheme: IconThemeData(color: Colors.white),
      ));

  static Color creamColor = Color(0xfff5f5f5);
  static Color dartBluishColor = Color(0xff403b58);
  static Color darkCreamColor = Vx.gray900;
  static Color lightBluishColor = Vx.indigo500;
}
