import 'package:flutter/material.dart';

class Box extends StatelessWidget {
  final Color color;
  final Widget? boxChild;
  const Box({super.key, required this.color, this.boxChild});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        margin: const EdgeInsets.all(15),
        decoration: BoxDecoration(
          borderRadius: const BorderRadius.all(Radius.circular(10)),
          color: color,
        ),
        child: boxChild,
      ),
    );
  }
}
