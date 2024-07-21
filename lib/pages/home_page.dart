import 'package:bmi_medium/components/box.dart';
import 'package:bmi_medium/components/icon_text.dart';
import 'package:bmi_medium/constans/color.dart';

import 'package:flutter/material.dart';

import 'package:font_awesome_flutter/font_awesome_flutter.dart';

enum Gender { male, female }

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePage();
}

class _HomePage extends State<HomePage> {
  Color activeButtonMale = blue;
  Color activeButtonFemale = darkPink;
  Color inActiveButton = purple;
  Gender? isActive;
  double heightBody = 0;

  void buttonActive(Gender gender) {
    setState(() {
      isActive = gender;
    });
  }

  @override
  Widget build(BuildContext context) {
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
                  color: isActive == Gender.male
                      ? activeButtonMale
                      : inActiveButton,
                  boxChild: IconText(
                    onTap: () {
                      buttonActive(Gender.male);
                    },
                    icon: FontAwesomeIcons.mars,
                    txt: 'MALE',
                  ),
                ),
                Box(
                  color: isActive == Gender.female
                      ? activeButtonFemale
                      : inActiveButton,
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
                    children: [
                      Text(
                        heightBody.toString(),
                        style: const TextStyle(fontWeight: FontWeight.w800),
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
                      activeColor: lightPink,
                      thumbColor: darkPink,
                      onChanged: (double newVal) {
                        setState(() {
                          heightBody = newVal.roundToDouble();
                        });
                      }),
                ],
              ),
            ),
          ),
          const Expanded(
            child: Row(
              children: [
                Box(
                  color: purple,
                  boxChild: null,
                ),
                Box(
                  color: purple,
                  boxChild: null,
                ),
              ],
            ),
          ),
          Container(
            height: 80.0,
            width: double.infinity,
            decoration: const BoxDecoration(
              color: darkPink,
            ),
          )
        ],
      ),
    );
  }
}
