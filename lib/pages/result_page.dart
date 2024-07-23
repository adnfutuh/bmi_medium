import 'package:bmi_medium/models/bmi_conclution.dart';
import 'package:bmi_medium/models/calculation.dart';
import 'package:flutter/material.dart';
import 'package:math_expressions/math_expressions.dart';

import '../theme/theme.dart';

class ResultPage extends StatelessWidget {
  final double weight;
  final double height;
  const ResultPage({super.key, required this.weight, required this.height});

  @override
  Widget build(BuildContext context) {
    Calculation calculate(double weight, double height) {
      Parser p = Parser();
      String bmiEquation = '${weight.round()}/((${height.round() / 100})^2)';
      Expression bmiExp = p.parse(bmiEquation);
      double bmiResult = bmiExp.evaluate(EvaluationType.REAL, ContextModel());

      String lowerNormalEquation = '18.5*((${height / 100})^2)';
      Expression lowerNormalExp = p.parse(lowerNormalEquation);
      double lowerNormalBmi =
          lowerNormalExp.evaluate(EvaluationType.REAL, ContextModel());

      String upperNormalEquation = '25*((${height / 100})^2)';
      Expression upperNormalExp = p.parse(upperNormalEquation);
      double upperNormalBmi =
          upperNormalExp.evaluate(EvaluationType.REAL, ContextModel());

      return Calculation(
          bmiResult: bmiResult,
          lowerNormalBmi: lowerNormalBmi,
          upperNormalBmi: upperNormalBmi);
    }

    Calculation result = calculate(weight, height);
    BMIConclution conclution() {
      switch (result.bmiResult) {
        case < 18.5:
          return BMIConclution('UNDERWEIGHT', MyTheme().warningResult);
        case > 18.5 && < 25:
          return BMIConclution('NORMAL', MyTheme().normalResult);
        case > 25 && < 29:
          return BMIConclution('OVERWEIGHT', MyTheme().warningResult);
        case > 29:
          return BMIConclution('OBESITY', MyTheme().dangerResult);

        default:
          return BMIConclution('LOADING', MyTheme().normalResult);
      }
    }

    return Scaffold(
      appBar: AppBar(
        title: const Text('BMI Calculator'),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(10),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                'RESULT',
                style: Theme.of(context).textTheme.bodyLarge,
              ),
              const SizedBox(
                height: 40,
              ),
              Text(
                result.bmiResult.toStringAsPrecision(3),
                style: MyTheme().valTxtStyle,
              ),
              const SizedBox(
                height: 5,
              ),
              Text(
                conclution().conclution,
                style: conclution().textStyle,
              ),
              const SizedBox(
                height: 40,
              ),
              Text(
                'Keep your body healthy. Your NORMAL WEIGHT is between ${result.lowerNormalBmi.toStringAsPrecision(3)} and ${result.upperNormalBmi.toStringAsPrecision(3)}',
                textAlign: TextAlign.center,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
