import 'package:flutter/material.dart';
import '../constants.dart';

class ReusableCardContent extends StatelessWidget {
  ReusableCardContent({required this.genderText, required this.genderIcon});

  String genderText;
  IconData genderIcon;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
          genderIcon,
          size: 70.0,
        ),
        const SizedBox(
          height: 15.0,
        ),
        Text(
          genderText,
          style: kLabelTextStyle,
        ),
      ],
    );
  }
}
