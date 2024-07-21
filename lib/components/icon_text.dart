import 'package:flutter/material.dart';

class IconText extends StatelessWidget {
  final IconData icon;
  final String txt;
  final void Function() onTap;

  const IconText({
    super.key,
    required this.icon,
    required this.txt,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Column(
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
      ),
    );
  }
}
