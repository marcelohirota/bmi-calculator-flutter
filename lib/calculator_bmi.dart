import 'dart:math';

class CalculatorBMI {
  CalculatorBMI({this.height, this.weight});

  final int height;
  final int weight;

  double _bmi;

  String calculateBMI() {
    _bmi = weight / pow(height / 100, 2);
    return _bmi.toStringAsFixed(1);
  }

  String getResult() {
    if (_bmi > 30) {
      return 'Obese';
    } else if (_bmi >= 25) {
      return 'Overweight';
    } else if (_bmi > 18.5) {
      return 'Normal';
    } else {
      return 'Underweight';
    }
  }

  String getInterpretation() {
    if (_bmi > 30) {
      return 'You have a really high BMI, please call a doctor.';
    } else if (_bmi >= 25) {
      return 'You have a high BMI. Try to exercise more.';
    } else if (_bmi > 18.5) {
      return 'You have a normal BMI. Good job!';
    } else {
      return 'You have a low BMI. You can eat a bit more.';
    }
  }
}
