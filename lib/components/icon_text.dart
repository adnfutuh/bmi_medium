import 'package:flutter/material.dart';

class IconText extends StatelessWidget {
  final IconData icon;
  final String txt;
  const IconText({
    super.key,
    required this.icon,
    required this.txt,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
          icon,
          color: Colors.white,
          size: 70,
        ),
        const SizedBox(
          height: 15,
        ),
        Text(txt)
      ],
    );
  }
}
