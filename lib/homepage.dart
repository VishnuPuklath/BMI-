import 'dart:ui';

import 'package:bmi_app/constants.dart';
import 'package:bmi_app/icon_content.dart';
import 'package:bmi_app/reuseable_card.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

const activeCardColor = Colors.grey;
const inactiveCardColor = Colors.teal;

enum Gender { male, female }

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  Gender? selectedGender;
  int height = 180;
  int weight = 60;
  int age = 18;
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
                    selectedGender = Gender.male;
                  });
                },
                child: ReuseableCard(
                  cardChild:
                      IconContent(icon: FontAwesomeIcons.mars, text: 'MALE'),
                  color: selectedGender == Gender.male
                      ? activeCardColor
                      : inactiveCardColor,
                ),
              ),
            ),
            Expanded(
              child: GestureDetector(
                onTap: (() {
                  setState(() {
                    selectedGender = Gender.female;
                  });
                }),
                child: ReuseableCard(
                  cardChild: IconContent(
                    icon: FontAwesomeIcons.venus,
                    text: 'Female',
                  ),
                  color: selectedGender == Gender.female
                      ? activeCardColor
                      : inactiveCardColor,
                ),
              ),
            ),
          ],
        ),
        Row(
          children: [
            Expanded(
              child: ReuseableCard(
                cardChild: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'HEIGHT',
                        style: klabelTextStyle,
                      ),
                      Row(
                        textBaseline: TextBaseline.alphabetic,
                        crossAxisAlignment: CrossAxisAlignment.baseline,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            height.toString(),
                            style: kNumberTextSTyle,
                          ),
                          Text(
                            'cm',
                            style: klabelTextStyle,
                          ),
                        ],
                      ),
                      Slider(
                          activeColor: kActiveColor,
                          inactiveColor: kInactiveColor,
                          min: 120,
                          max: 220,
                          value: (height.toDouble()),
                          onChanged: (double newValue) {
                            setState(() {
                              height = newValue.round();
                            });
                          })
                    ]),
                color: inactiveCardColor,
              ),
            ),
          ],
        ),
        Row(
          children: [
            Expanded(
              child: ReuseableCard(
                  cardChild: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'WEIGHT',
                          style: klabelTextStyle,
                        ),
                        Text(
                          weight.toString(),
                          style: kNumberTextSTyle,
                        ),
                        Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              RoundIconButton(
                                onPressed: () {
                                  setState(() {
                                    weight--;
                                  });
                                },
                                icon: FontAwesomeIcons.minus,
                              ),
                              SizedBox(
                                width: 6,
                              ),
                              RoundIconButton(
                                onPressed: () {
                                  setState(() {
                                    weight++;
                                  });
                                },
                                icon: FontAwesomeIcons.plus,
                              )
                            ])
                      ]),
                  color: inactiveCardColor),
            ),
            Expanded(
              child: ReuseableCard(
                  color: inactiveCardColor,
                  cardChild: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'AGE',
                        style: klabelTextStyle,
                      ),
                      Text(
                        age.toString(),
                        style: kNumberTextSTyle,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          RoundIconButton(
                              icon: FontAwesomeIcons.minus,
                              onPressed: () {
                                setState(() {
                                  age--;
                                });
                              }),
                          SizedBox(
                            width: 5,
                          ),
                          RoundIconButton(
                              icon: FontAwesomeIcons.plus,
                              onPressed: () {
                                setState(() {
                                  age++;
                                });
                              }),
                        ],
                      )
                    ],
                  )),
            ),
          ],
        )
      ]),
    );
  }
}

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











 // Color maleCardColor = inactiveCardColor;
  // Color femaleCardColor = inactiveCardColor;

  // void updateColor(Gender selectedGender) {
  //   if (selectedGender == Gender.male) {
  //     if (maleCardColor == inactiveCardColor) {
  //       maleCardColor = activeCardColor;
  //       femaleCardColor = inactiveCardColor;
  //     } else {
  //       maleCardColor = inactiveCardColor;
  //     }
  //   }
  //   if (selectedGender == Gender.female) {
  //     if (femaleCardColor == inactiveCardColor) {
  //       femaleCardColor = activeCardColor;
  //       maleCardColor = inactiveCardColor;
  //     } else {
  //       femaleCardColor = inactiveCardColor;
  //     }
  //   }
  // }