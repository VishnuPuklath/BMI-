import 'package:bmi_app/components/bottom_button.dart';
import 'package:bmi_app/constants.dart';
import 'package:bmi_app/components/reuseable_card.dart';
import 'package:flutter/material.dart';

class ResultPage extends StatelessWidget {
  String bmiResult;
  String result;
  String interpolation;
  ResultPage(
      {required this.bmiResult,
      required this.result,
      required this.interpolation});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('BMI'),
        backgroundColor: Colors.teal,
      ),
      body: Column(crossAxisAlignment: CrossAxisAlignment.stretch, children: [
        Expanded(
          child: Container(
            child: Center(
              child: Text(
                'Your Result ',
                style: kTitleTextStyle,
              ),
            ),
          ),
        ),
        Expanded(
            flex: 7,
            child: ReuseableCard(
              color: kInactiveColor,
              cardChild: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text(
                      result,
                      style: kResultTextSyle,
                    ),
                    Text(
                      bmiResult,
                      style: kBmiREsultValue,
                    ),
                    Text(
                      interpolation,
                      textAlign: TextAlign.center,
                      style: kBodyTextSTyle,
                    ),
                  ]),
            )),
        Expanded(
          child: BottomButton(
              buttontitle: 'RE-CALCULATE',
              onTap: () {
                Navigator.pop(context);
              }),
        )
      ]),
    );
  }
}
