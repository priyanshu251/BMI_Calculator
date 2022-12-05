import 'package:bmi_calculator/components/reusable_card.dart';
import 'package:bmi_calculator/screens/inputpage.dart';
import 'package:flutter/material.dart';
import '../constants.dart';
import '../components/bottom_button.dart';
import 'package:bmi_calculator/calculator.dart';

class ResultPage extends StatelessWidget {
  //Calculator calc = Calculator(ht: height, wt: weight);
  ResultPage(
      {required this.bmiresult,
      required this.resulttext,
      required this.interpretation});
  final String bmiresult;
  final String resulttext;
  final String interpretation;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SafeArea(
        child: Scaffold(
          backgroundColor: const Color(0xFF111328),
          appBar: AppBar(
            title: const Text(
              '                    BMI CALCULATOR',
              style: TextStyle(
                fontSize: 20.0,
              ),
            ),
            backgroundColor: const Color(0xFF111328),
          ),
          body: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Expanded(
                child: Container(
                  padding: const EdgeInsets.all(15.0),
                  alignment: Alignment.bottomLeft,
                  child: const Text(
                    'Your result',
                    style: kTitleTextStyle,
                  ),
                ),
              ),
              Expanded(
                flex: 5,
                child: reusablecard(
                  colour: const Color(0xFF1D1E33),
                  cardChild: Container(
                    color: const Color(0xFF1D1E33),
                    padding: const EdgeInsets.all(16.0),
                    margin: const EdgeInsets.fromLTRB(20, 30, 20, 20),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          resulttext.toUpperCase(),
                          style: kResultTextStyle,
                        ),
                        Text(
                          bmiresult,
                          style: kBMITextstyle,
                        ),
                        Text(
                          interpretation,
                          style: kBodyTextStyle,
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              BottomButton(
                onPress: () {
                  Navigator.pop(context);
                },
                title: 'RE-CALCULATE',
              ),
            ],
          ),
        ),
      ),
    );
  }
}
