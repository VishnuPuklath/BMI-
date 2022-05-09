import 'package:bmi_app/constants.dart';
import 'package:bmi_app/screens/resultpage.dart';
import 'package:flutter/material.dart';

class BottomButton extends StatelessWidget {
  @override
  final Function() onTap;
  final String buttontitle;
  BottomButton({required this.buttontitle, required this.onTap});

  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        // margin: EdgeInsets.only(top: 15, bottom: 15),
        width: double.infinity,
        color: Colors.teal,
        child: Center(
            child: Text(
          buttontitle,
          style: kLargeTextSTyle,
        )),
      ),
    );
  }
}
