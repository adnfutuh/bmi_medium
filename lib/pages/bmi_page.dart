import 'package:bmi_medium/components/box.dart';
import 'package:bmi_medium/components/icon_text.dart';
import 'package:bmi_medium/components/round_button.dart';
import 'package:bmi_medium/theme/theme.dart';
import 'package:bmi_medium/constans/color.dart';
import 'package:bmi_medium/constans/gender.dart';
import 'package:bmi_medium/theme/gender_theme.dart';

import 'package:flutter/material.dart';

import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePage();
}

class _HomePage extends State<HomePage> {
  Gender? genderActive;
  double heightBody = 0;
  int weightBody = 50;
  int age = 30;

  void buttonActive(Gender gender) {
    setState(() {
      genderActive = gender;
    });
  }

  @override
  Widget build(BuildContext context) {
    GenderTheme genderTheme = GenderTheme(genderActive);
    Color primaryColor = genderTheme.color.primaryColor;
    Color secondaryColor = genderTheme.color.secondaryColor;

    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'BMI Calculator',
        ),
        centerTitle: true,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            child: Row(
              children: [
                Box(
                  color: genderActive == Gender.male ? primaryColor : purple,
                  boxChild: IconText(
                    onTap: () {
                      buttonActive(Gender.male);
                    },
                    icon: FontAwesomeIcons.mars,
                    txt: 'MALE',
                  ),
                ),
                Box(
                  color: genderActive == Gender.female ? primaryColor : purple,
                  boxChild: IconText(
                    onTap: () {
                      buttonActive(Gender.female);
                    },
                    icon: FontAwesomeIcons.venus,
                    txt: 'FEMALE',
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: Box(
              color: purple,
              boxChild: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    'HEIGHT',
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.baseline,
                    textBaseline: TextBaseline.alphabetic,
                    children: [
                      Text(
                        heightBody.toString(),
                        style: MyTheme().valTxtStyle,
                      ),
                      const Text(
                        'cm',
                      ),
                    ],
                  ),
                  Slider(
                      value: heightBody,
                      min: 0,
                      max: 200,
                      divisions: 200,
                      activeColor: secondaryColor,
                      thumbColor: primaryColor,
                      onChanged: (double newVal) {
                        setState(() {
                          heightBody = newVal.roundToDouble();
                        });
                      }),
                ],
              ),
            ),
          ),
          Expanded(
            child: Row(
              children: [
                Box(
                  color: purple,
                  boxChild: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      const Text('WEIGHT'),
                      Text(
                        weightBody.toString(),
                        style: MyTheme().valTxtStyle,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          RoundButton(
                            onTap: () {
                              setState(() {
                                weightBody++;
                              });
                            },
                            icon: FontAwesomeIcons.plus,
                            colorIcon: primaryColor,
                          ),
                          const SizedBox(width: 10),
                          RoundButton(
                            onTap: () {
                              setState(() {
                                weightBody--;
                              });
                            },
                            icon: FontAwesomeIcons.minus,
                            colorIcon: primaryColor,
                          ),
                        ],
                      )
                    ],
                  ),
                ),
                Box(
                  color: purple,
                  boxChild: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      const Text('AGE'),
                      Text(
                        age.toString(),
                        style: MyTheme().valTxtStyle,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          RoundButton(
                            onTap: () {
                              setState(() {
                                age++;
                              });
                            },
                            icon: FontAwesomeIcons.plus,
                            colorIcon: primaryColor,
                          ),
                          const SizedBox(width: 10),
                          RoundButton(
                            onTap: () {
                              setState(() {
                                age--;
                              });
                            },
                            icon: FontAwesomeIcons.minus,
                            colorIcon: primaryColor,
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
          Container(
            height: 70.0,
            width: double.infinity,
            decoration: BoxDecoration(
              color: primaryColor,
            ),
            child: const Center(
              child: Text('calculate'),
            ),
          ),
        ],
      ),
    );
  }
}
