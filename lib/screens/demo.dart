import 'package:bmi_calculator/components/reusable_card.dart';
import 'package:flutter/material.dart';
import 'package:bmi_calculator/calculator_brain.dart';
import '../constants.dart';



class Demo extends StatelessWidget {
  Demo({@required this.bmiResult, @required this.interpretation, @required this.resultText});

  final String bmiResult;
  final String resultText;
  final String interpretation;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI Calculator'),
      ),
      body: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Expanded(
              child: Container(
                padding: EdgeInsets.all(15.0),
                alignment: Alignment.bottomLeft,
                child: Text(
                  'Your Result',
                  style: kTitleTextStyle,
                ),
              ),
            ),
            Expanded(
              flex: 5,
              child: ReusableCard(
                colour: kDarkBlue,
                cardChild: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    Text(
                      resultText.toUpperCase(),
                      style: kResultStyle,
                    ),
                    Text(
                      bmiResult,
                      style: kBMITextStyle,
                    ),
                    Text(
                      interpretation,
                      style: kInterpretationStyle,
                      textAlign: TextAlign.center,
                    ),
                  ],
                ),
              ),
            ),
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10.0),
                ),
              padding: EdgeInsets.all(10.0),
              width: double.infinity,
              height: 80.0,
              margin: EdgeInsets.all(10.0),
              child: FlatButton(
                child: Text('Re-Calculate', style: kLargeButtonTextStyle),
                onPressed: () {
                  Navigator.pop(context);
                },
                color: kPink,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
