import 'package:flutter/material.dart';
import 'package:math_expressions/math_expressions.dart';

import '../theme/theme.dart';

class ResultPage extends StatelessWidget {
  final double weight;
  final double height;
  const ResultPage({super.key, required this.weight, required this.height});

  @override
  Widget build(BuildContext context) {
    double calculate(double weight, double height) {
      Parser p = Parser();
      String equation = '${weight.round()}/((${height.round() / 100})^2)';
      Expression exp = p.parse(equation);
      double result = exp.evaluate(EvaluationType.REAL, ContextModel());

      return result;
    }

    double result = calculate(weight, height);
    BMIConclution conclution() {
      switch (result) {
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
              result.toStringAsPrecision(3),
              style: MyTheme().valTxtStyle,
            ),
            const SizedBox(
              height: 5,
            ),
            Text(
              conclution().conclution,
              style: conclution().textStyle,
            )
          ],
        ),
      ),
    );
  }
}

class BMIConclution {
  final String conclution;
  final TextStyle textStyle;
  const BMIConclution(this.conclution, this.textStyle);
}
