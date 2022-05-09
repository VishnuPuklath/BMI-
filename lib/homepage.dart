import 'dart:ui';

import 'package:bmi_app/icon_content.dart';
import 'package:bmi_app/reuseable_card.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

const activeCardColor = Colors.grey;
const inactiveCardColor = Colors.teal;

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  Color maleCardColor = inactiveCardColor;
  Color femaleCardColor = inactiveCardColor;

  void updateColor(int gender) {
    if (gender == 1) {
      if (maleCardColor == inactiveCardColor) {
        maleCardColor = activeCardColor;
        femaleCardColor = inactiveCardColor;
      } else {
        maleCardColor = inactiveCardColor;
      }
    }
    if (gender == 2) {
      if (femaleCardColor == inactiveCardColor) {
        femaleCardColor = activeCardColor;
        maleCardColor = inactiveCardColor;
      } else {
        femaleCardColor = inactiveCardColor;
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.teal,
        centerTitle: true,
        title: const Text(
          'BMI',
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: Column(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
        Row(
          children: [
            Expanded(
              child: GestureDetector(
                onTap: () {
                  setState(() {
                    updateColor(1);
                  });
                },
                child: ReuseableCard(
                  cardChild:
                      IconContent(icon: FontAwesomeIcons.mars, text: 'MALE'),
                  color: maleCardColor,
                ),
              ),
            ),
            Expanded(
              child: GestureDetector(
                onTap: (() {
                  setState(() {
                    updateColor(2);
                  });
                }),
                child: ReuseableCard(
                  cardChild: IconContent(
                    icon: FontAwesomeIcons.venus,
                    text: 'Female',
                  ),
                  color: femaleCardColor,
                ),
              ),
            ),
          ],
        ),
        Row(
          children: [
            Expanded(
              child: ReuseableCard(
                color: inactiveCardColor,
              ),
            ),
          ],
        ),
        Row(
          children: [
            Expanded(
              child: ReuseableCard(color: inactiveCardColor),
            ),
            Expanded(
              child: ReuseableCard(color: inactiveCardColor),
            ),
          ],
        )
      ]),
    );
  }
}
