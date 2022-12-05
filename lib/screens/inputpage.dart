import 'result.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import '../components/reusable_card.dart';
import '../components/reusable_card_content.dart';
import '../constants.dart';
import '../components/bottom_button.dart';
import '../components/custom_fab.dart';
import '../calculator.dart';

enum gender { male, female }
gender? selectedgender;
enum wght { plus, minus }
wght? selecticon;

class InputPage extends StatefulWidget {
  const InputPage({Key? key}) : super(key: key);

  @override
  _InputPageState createState() => _InputPageState();
}

int height = 180;
int weight = 60;
int age = 18;

// Color malecardcolor = Color(0xFF111328);
// Color femalecardcolor = Color(0xFF111328);

// void genderPress(gender check) {
//   //check==gender.male?{malecardcolor==inactiveCardContainer?{malecardcolor=activeCardContainer,femalecardcolor=inactiveCardContainer}:malecardcolor=inactiveCardContainer}:{femalecardcolor==inactiveCardContainer?{femalecardcolor=activeCardContainer,malecardcolor=inactiveCardContainer}:femalecardcolor=inactiveCardContainer;
//
//   if (check == gender.male) {
//     if (malecardcolor == inactiveCardContainer) {
//       malecardcolor = activeCardContainer;
//       femalecardcolor = inactiveCardContainer;
//     } else {
//       malecardcolor = inactiveCardContainer;
//     }
//   } else {
//     if (femalecardcolor == inactiveCardContainer) {
//       femalecardcolor = activeCardContainer;
//       malecardcolor = inactiveCardContainer;
//     } else {
//       femalecardcolor = inactiveCardContainer;
//     }
//   }
// }

// void gesture() {
//   GestureDetector(
//     onTap: () {
//       setState(() {
//         selectedgender = gender.male;
//       });
//     },
//   );
// }

class _InputPageState extends State<InputPage> {
  // Function? SetWeight(wght check) {
  //   setState(() {
  //     weight = check == wght.plus ? weight++ : weight--;
  //   });
  // }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: const Center(
            child: Text('BMI CALCULATOR'),
          ),
        ),
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Expanded(
                child: Row(
                  children: [
                    Expanded(
                      child: reusablecard(
                        onPress: () {
                          setState(() {
                            selectedgender = gender.male;
                          });
                        },
                        colour: selectedgender == gender.male
                            ? kActiveCardContainer
                            : kInactiveCardContainer,
                        cardChild: ReusableCardContent(
                          genderText: 'MALE',
                          genderIcon: FontAwesomeIcons.mars,
                        ),
                      ),
                    ),
                    Expanded(
                      child: reusablecard(
                        onPress: () {
                          setState(() {
                            selectedgender = gender.female;
                          });
                        },
                        colour: selectedgender == gender.female
                            ? kActiveCardContainer
                            : kInactiveCardContainer,
                        cardChild: ReusableCardContent(
                          genderText: 'FEMALE',
                          genderIcon: FontAwesomeIcons.venus,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Expanded(
                child: reusablecard(
                  colour: kActiveCardContainer,
                  cardChild: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text(
                        'HEIGHT',
                        style: kLabelTextStyle,
                      ),
                      const SizedBox(
                        height: 6.0,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.baseline,
                        textBaseline: TextBaseline.alphabetic,
                        children: [
                          Text(
                            height.toString(),
                            style: kNumberTextStyle,
                          ),
                          const Text(
                            'cm',
                            style: kLabelTextStyle,
                          ),
                        ],
                      ),
                      SliderTheme(
                        data: SliderTheme.of(context).copyWith(
                          trackHeight: 2.0,
                          activeTrackColor: const Color(0xFFFFFFFF),
                          inactiveTrackColor: const Color(0xFF8D8E98),
                          thumbColor: const Color(0xFFEB1555),
                          overlayColor: const Color(0x29EB1555),
                          thumbShape: const RoundSliderThumbShape(
                            enabledThumbRadius: 11.0,
                          ),
                          overlayShape: const RoundSliderOverlayShape(
                            overlayRadius: 21.0,
                          ),
                        ),
                        child: Slider(
                          value: height.toDouble(),
                          min: 100.0,
                          max: 300.0,
                          onChanged: (double newValue) {
                            setState(() {
                              height = newValue.round();
                            });
                          },
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Expanded(
                child: Row(
                  children: [
                    Expanded(
                      child: reusablecard(
                        colour: kActiveCardContainer,
                        cardChild: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            const Text(
                              'WEIGHT',
                              style: kLabelTextStyle,
                            ),
                            Text(
                              weight.toString(),
                              style: kNumberTextStyle,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                CustomFAB(
                                  icon: FontAwesomeIcons.minus,
                                  onPress: () {
                                    setState(() {
                                      weight--;
                                    });
                                  },
                                ),
                                const SizedBox(
                                  width: 17.0,
                                ),
                                CustomFAB(
                                  icon: FontAwesomeIcons.plus,
                                  onPress: () {
                                    setState(() {
                                      weight++;
                                    });
                                  },
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                    Expanded(
                      child: reusablecard(
                        colour: kActiveCardContainer,
                        cardChild: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            const Text(
                              'AGE',
                              style: kLabelTextStyle,
                            ),
                            Text(
                              age.toString(),
                              style: kNumberTextStyle,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                CustomFAB(
                                  icon: FontAwesomeIcons.minus,
                                  onPress: () {
                                    setState(() {
                                      age--;
                                    });
                                  },
                                ),
                                const SizedBox(
                                  width: 17.0,
                                ),
                                CustomFAB(
                                  icon: FontAwesomeIcons.plus,
                                  onPress: () {
                                    setState(() {
                                      age++;
                                    });
                                  },
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              BottomButton(
                onPress: () {
                  Calculator calc = Calculator(
                    ht: height,
                    wt: weight,
                  );
                  calc.calculateBMI();
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => ResultPage(
                              bmiresult: calc.calculateBMI(),
                              resulttext: calc.getResult(),
                              interpretation: calc.getInterpretation(),
                            )),
                  );
                },
                title: 'CALCULATE BMI',
              ),
            ],
          ),
        ),
      ),
    );
  }
}
