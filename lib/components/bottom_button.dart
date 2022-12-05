import 'package:flutter/material.dart';
import '../constants.dart';

class BottomButton extends StatelessWidget {
  BottomButton({required this.onPress, required this.title});

  final Function? onPress;
  final String title;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        onPress!();
      },
      child: Container(
        margin: const EdgeInsets.only(top: 10.0),
        color: kBottomContainerCard,
        height: kBottomContainerHeight,
        width: double.infinity,
        child: Center(
          child: Text(
            title,
            style: kBottomButton,
          ),
        ),
      ),
    );
  }
}
