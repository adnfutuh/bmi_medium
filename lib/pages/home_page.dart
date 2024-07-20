import 'package:bmi_medium/pages/home_page.dart';
import 'package:flutter/material.dart';

import 'package:font_awesome_flutter/font_awesome_flutter.dart';

double bottomContainerHeight = 80.0;
Color darkPurple = const Color(0XFF1D1E33);
Color darkPink = const Color(0xffeb1555);

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePage();
}

class _HomePage extends State<HomePage> {
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
        children: [
          const Expanded(
            child: Row(
              children: [
                Box(
                  color: darkPurple,
                  boxChild: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        FontAwesomeIcons.mars,
                        color: Colors.white,
                        size: 70,
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      Text(
                        'MALE',
                      )
                    ],
                  ),
                ),
                Box(
                  color: darkPurple,
                  boxChild: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        FontAwesomeIcons.venus,
                        color: Colors.white,
                        size: 70,
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      Text(
                        'FEMALE',
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: Box(
              color: darkPurple,
              boxChild: null,
            ),
          ),
          Expanded(
            child: Row(
              children: [
                Box(
                  color: darkPurple,
                  boxChild: null,
                ),
                Box(
                  color: darkPurple,
                  boxChild: null,
                ),
              ],
            ),
          ),
          Container(
            height: bottomContainerHeight,
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

class Box extends StatelessWidget {
  const Box({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(15),
      decoration: const BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(10)),
        color: Color(0xFF1D1E33),
      ),
    );
  }
}
