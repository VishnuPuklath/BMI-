import 'package:bmi_app/constants.dart';
import 'package:flutter/material.dart';

class IconContent extends StatelessWidget {
  IconData icon;
  String text;
  IconContent({required this.icon, required this.text});
  @override
  Widget build(BuildContext context) {
    return Column(mainAxisAlignment: MainAxisAlignment.center, children: [
      Icon(
        icon,
        size: 90,
        color: Colors.white,
      ),
      const SizedBox(
        height: 15,
      ),
      Text(
        text,
        style: klabelTextStyle,
      )
    ]);
  }
}
