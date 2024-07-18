import 'package:flutter/material.dart';

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
      body: const Column(
        children: [
          Expanded(
            child: Row(
              children: [
                Box(),
                Box(),
              ],
            ),
          ),
          Expanded(
            child: Box(),
          ),
          Expanded(
            child: Row(
              children: [
                Box(),
                Box(),
              ],
            ),
          ),
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
