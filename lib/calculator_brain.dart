import 'dart:math';

class CalculatorBrain {
  CalculatorBrain(this.heigth, this.weigth);

  final int heigth;
  final int weigth;

  double _bmi;

  String calculateBMI() {
    _bmi = weigth / pow(heigth / 100, 2);
    return _bmi.toStringAsFixed(1);
  }

  String getResult() {
    if (_bmi >= 25) {
      return 'Overweight';
    } else if (_bmi < 18) {
      return 'Normal';
    } else {
      return 'Underweight';
    }
  }

  String getInterpretation() {
    if (_bmi >= 25) {
      return 'You have higher than normal body weight, You should exercise more.';
    } else if (_bmi > 18) {
      return 'You have a normal body weight. Good job.';
    } else {
      return 'You have lower than normal body weight, you can eat a bit more.';
    }
  }
}