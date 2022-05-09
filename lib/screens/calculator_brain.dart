import 'dart:math';

class CalculatorBrain {
  int weight;
  int height;

  late double _bmi;

  CalculatorBrain({required this.height, required this.weight});

  String calculateBmi() {
    _bmi = weight / pow(height / 100, 2);
    return _bmi.toStringAsFixed(1);
  }

  String getResult() {
    if (_bmi >= 25) {
      return 'OverWeight';
    } else if (_bmi > 18.5) {
      return 'Normal';
    } else {
      return 'Under weight';
    }
  }

  String getInterpolation() {
    if (_bmi >= 25) {
      return 'You have a higher than Normal body weight,Do some excercise';
    } else if (_bmi > 18.5) {
      return 'You have a Normal body weight, Good job';
    } else {
      return 'you have lower body weight, you can eat more';
    }
  }
}
