import 'package:bmi_medium/constans/color.dart';
import 'package:flutter/material.dart';

class MyTheme {
  ThemeData get theme => ThemeData.dark().copyWith(
        //copy with = use all of dark them and change some part of it
        appBarTheme: const AppBarTheme(
          centerTitle: true,
          titleTextStyle: TextStyle(
            fontFamily: 'Poppins',
            fontSize: 17,
            letterSpacing: 1.7,
          ),
        ),
        textTheme: const TextTheme(
          bodyLarge: TextStyle(
            fontFamily: 'Poppins',
            color: Colors.white,
            fontSize: 30,
          ),
          bodyMedium: TextStyle(
            fontFamily: 'Poppins',
            color: Colors.white,
            fontSize: 15,
          ),
          bodySmall: TextStyle(
            fontFamily: 'Poppins',
            color: Colors.white,
            fontSize: 8,
          ),
        ),
      );

  TextStyle get valTxtStyle => const TextStyle(
        fontSize: 40,
        fontWeight: FontWeight.w900,
        letterSpacing: 1.5,
      );
  //------ result page
  TextStyle get normalResult => const TextStyle(
        fontSize: 20,
        fontWeight: FontWeight.w900,
        letterSpacing: 2.0,
        color: normal,
      );
  TextStyle get warningResult => const TextStyle(
        fontSize: 20,
        fontWeight: FontWeight.w900,
        letterSpacing: 2.0,
        color: warning,
      );
  TextStyle get dangerResult => const TextStyle(
        fontSize: 20,
        fontWeight: FontWeight.w900,
        letterSpacing: 2.0,
        color: danger,
      );
}
