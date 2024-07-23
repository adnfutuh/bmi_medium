import 'package:flutter/material.dart';

class MyTheme {
  ThemeData get theme => ThemeData.dark().copyWith(
        //copy with = use all of dark them and change some part of it
        appBarTheme: const AppBarTheme(
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
}
