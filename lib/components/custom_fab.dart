import 'package:flutter/material.dart';

class CustomFAB extends StatelessWidget {
  const CustomFAB({this.icon, required this.onPress});
  final IconData? icon;
  final Function? onPress;
  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      constraints: const BoxConstraints.tightFor(
        width: 56.0,
        height: 56.0,
      ),
      elevation: 10.0,
      onPressed: () {
        onPress!();
      },
      shape: const CircleBorder(),
      fillColor: const Color(0xFF4C4F5E),
      child: Icon(
        icon,
      ),
    );
  }
}
