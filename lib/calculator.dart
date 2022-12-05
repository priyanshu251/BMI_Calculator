import 'dart:math';

class Calculator {
  Calculator({required this.ht, required this.wt});
  final int ht;
  final int wt;
  double _bmi = 0;
  String calculateBMI() {
    _bmi = wt / pow(ht / 100, 2);
    return _bmi.toStringAsFixed(1);
  }

  String getResult() {
    if (_bmi >= 25) {
      return 'overweight';
    } else if (_bmi > 18.5) {
      return 'normal';
    } else {
      return 'underweight';
    }
  }

  String getInterpretation() {
    if (_bmi >= 25) {
      return 'eat less';
    } else if (_bmi > 18.5) {
      return 'good job';
    } else {
      return 'eat more';
    }
  }
}
