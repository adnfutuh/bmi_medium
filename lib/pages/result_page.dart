import 'package:flutter/material.dart';
import 'package:math_expressions/math_expressions.dart';

class ResultPage extends StatelessWidget {
  final double weight;
  final double height;
  const ResultPage({super.key, required this.weight, required this.height});

  @override
  Widget build(BuildContext context) {
    String calculate(double weight, double height) {
      Parser p = Parser();
      String equation = '${weight.round()}/((${height.round() / 100})^2)';
      Expression exp = p.parse(equation);
      double result = exp.evaluate(EvaluationType.REAL, ContextModel());

      return result.toString();
    }

    String result = calculate(weight, height);

// Underweight = <18.5
// Normal weight = 18.5–24.9
// Overweight = 25–29.9
// Obesity = BMI of 30 or greater

    return Scaffold(
      body: Center(
        child: Text(
          result,
        ),
      ),
    );
  }
}
