import 'package:bmi_medium/constans/color.dart';
import 'package:bmi_medium/constans/gender.dart';
import 'package:flutter/material.dart';

class GenderTheme {
  final Gender? gender;
  GenderTheme(this.gender);

  final Theme _default = Theme(primaryColor: purple, secondaryColor: purple);
  final Theme _male = Theme(primaryColor: blue, secondaryColor: lightBlue);
  final Theme _female =
      Theme(primaryColor: darkPink, secondaryColor: lightPink);

  Theme get color {
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

class Theme {
  final Color primaryColor;
  final Color secondaryColor;
  Theme({required this.primaryColor, required this.secondaryColor});
}
