import 'package:flutter/material.dart';
import 'dart:math';

class CalculatorBrain {
  CalculatorBrain({@required this.weight, @required this.height});

  final int height;
  final int weight;
  double _bmi;

  String calculateBMI() {
     _bmi = weight / pow(height / 100, 2);
    return _bmi.toStringAsFixed(1);
  }

  String getResult() {
    if (_bmi >= 25.0) {
      return 'Overweight';
    } else if (_bmi >= 18.5) {
      return 'Normal';
    } else {
      return 'Underweight';
    }
  }

  String getInterpretation() {
    if (_bmi >= 25) {
      return 'You have a higher than normal BMI. Consider exercising more.';
    } else if (_bmi >= 18.5) {
      return 'You have a normal BMI. You \'re doing fine.';
    } else {
      return 'You have a lower than normal BMI. You should consider eating more.';
    }
  }
}
