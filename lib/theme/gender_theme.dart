import 'package:bmi_medium/constans/color.dart';
import 'package:bmi_medium/constans/gender.dart';
import 'package:flutter/material.dart';

class GenderTheme {
  final Gender? gender;
  GenderTheme(this.gender);

  final GenderThemeData _default =
      GenderThemeData(primaryColor: purple, secondaryColor: purple);
  final GenderThemeData _male =
      GenderThemeData(primaryColor: blue, secondaryColor: lightBlue);
  final GenderThemeData _female =
      GenderThemeData(primaryColor: darkPink, secondaryColor: lightPink);

  GenderThemeData get color {
    switch (gender) {
      case Gender.male:
        return _male;
      case Gender.female:
        return _female;
      default:
        return _default;
    }
  }
}

class GenderThemeData {
  final Color primaryColor;
  final Color secondaryColor;
  GenderThemeData({required this.primaryColor, required this.secondaryColor});
}
