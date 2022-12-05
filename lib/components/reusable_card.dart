import 'package:flutter/material.dart';

class reusablecard extends StatelessWidget {
  reusablecard({required this.colour, this.cardChild, this.onPress});

  final Color colour;
  final Widget? cardChild;
  final Function? onPress;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        onPress!();
      },
      child: Container(
        child: cardChild,
        margin: const EdgeInsets.all(15.0),
        decoration: BoxDecoration(
          color: colour,
          borderRadius: BorderRadius.circular(10.0),
        ),
      ),
    );
  }
}

//how to pass function as a argument and also set it as a value of a variable

// void main() {
//   int result = calculator(3,7,multiply);
//   print(result);
// }
// Function calculator=(int a,int b,Function operator)       function is stored inside a variable of function type
// {
//   return operator(a,b);
// };
// int add(int a,int b)
// {
//   return a+b;
// }
// int multiply(int a,int b)
// {
//   return a*b;
// }
