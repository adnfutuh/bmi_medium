import 'package:flutter/material.dart';

class RoundButton extends StatelessWidget {
  final void Function() onTap;
  final Color colorIcon;
  final IconData icon;
  const RoundButton(
      {super.key,
      required this.icon,
      required this.colorIcon,
      required this.onTap});

  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      onPressed: onTap,
      fillColor: Colors.white,
      shape: const CircleBorder(),
      constraints: const BoxConstraints.tightFor(
        width: 40,
        height: 40,
      ),
      child: Icon(
        icon,
        color: colorIcon,
      ),
    );
  }
}
