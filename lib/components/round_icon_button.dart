import 'package:bmi_app/constants.dart';
import 'package:flutter/material.dart';

class RoundIconButton extends StatelessWidget {
  @override
  final IconData icon;
  final Function() onPressed;
  RoundIconButton({required this.icon, required this.onPressed});
  Widget build(BuildContext context) {
    return RawMaterialButton(
      child: Icon(
        icon,
        color: kInactiveColor,
      ),
      onPressed: onPressed,
      constraints: BoxConstraints.tightFor(width: 56.0, height: 56.0),
      shape: CircleBorder(),
      fillColor: kActiveColor,
    );
  }
}
