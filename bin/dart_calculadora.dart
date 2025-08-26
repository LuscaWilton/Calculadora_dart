import 'dart:io';
import 'package:math_expressions/math_expressions.dart';

void main() {
  while (true) {
    stdout.write("> ");
    String? input = stdin.readLineSync();

    if (input == null || input.trim().toLowerCase() == "sair") {
      break;
    }

    try {
      Parser parser = Parser();
      Expression exp = parser.parse(input);

      ContextModel cm = ContextModel();
      double result = exp.evaluate(EvaluationType.REAL, cm);

      print(result);
    } catch (e) {
      print("Erro: expressão inválida");
    }
  }
}
