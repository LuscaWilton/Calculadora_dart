import 'dart:io';

void main() {
  print("=== Calculadora Simples ===");
  print("Digite a sequencia numerica");
  print("Digite 'sair' para encerrar.\n");

  while (true) {
    stdout.write("Digite a expressão: ");
    String? input = stdin.readLineSync();

    if (input == null || input.toLowerCase() == 'sair') {
      print("Calculadora encerrada.");
      break;
    }

    
    List<String> partes = input.split(' ');
    if (partes.length != 3) {
      print("Entrada inválida! Use o formato: número operador número\n");
      continue;
    }

    double? num1 = double.tryParse(partes[0]);
    String operador = partes[1];
    double? num2 = double.tryParse(partes[2]);

    if (num1 == null || num2 == null) {
      print("Números inválidos! Tente novamente.\n");
      continue;
    }

    double resultado;
    switch (operador) {
      case '+':
        resultado = num1 + num2;
        break;
      case '-':
        resultado = num1 - num2;
        break;
      case '*':
        resultado = num1 * num2;
        break;
      case '/':
        if (num2 == 0) {
          print("Erro: divisão por zero!\n");
          continue;
        }
        resultado = num1 / num2;
        break;
      default:
        print("Operador inválido! Use +, -, * ou /\n");
        continue;
    }

    print("Resultado: $num1 $operador $num2 = $resultado\n");
  }
}
