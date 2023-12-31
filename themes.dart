import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

class MyTheme {
  static ThemeData lightTheme(BuildContext context) => ThemeData(
        cardColor: Colors.white,
        canvasColor: creamColor,
        primarySwatch: Colors.deepPurple,
        appBarTheme: const AppBarTheme(
          color: Colors.white,
          elevation: 0.0,
          iconTheme: IconThemeData(color: Colors.black),
          // textTheme:Theme.of(context).textTheme,
        ),
        //fontFamily: GoogleFonts.lato().fontFamily,
      );
  static ThemeData darkTheme(BuildContext context) => ThemeData(
        cardColor: Colors.black,
        canvasColor: darkCreamColor,
        primarySwatch: Colors.deepPurple,
        appBarTheme: const AppBarTheme(
          color: Colors.black,
          elevation: 0.0,
          iconTheme: IconThemeData(color: Colors.black),
          // textTheme:Theme.of(context).textTheme,
        ),
      );
  //fontFamily: GoogleFonts.lato().fontFamily,
  //Colors
  static Color creamColor = const Color(0xfff5f5f5);
  static Color darkCreamColor = Vx.gray900;
  static Color darkBluishColor = const Color(0xff403b58);
  static Color lightBluishColor = Vx.indigo500;
}
