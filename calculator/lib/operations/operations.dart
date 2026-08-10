class Operations {
  String display = '0';

  String operation1 = '0';
  String operation2 = '0';
  String typeOperation = '';

  void calcular(String number) {
    switch (number) {
      case 'AC':
        display = '0';
        operation1 = '0';
        operation2 = '0';
        typeOperation = '';
        break;

      case 'x':
      case '-':
      case '+':
      case '/':
        operation1 = display;
        typeOperation = number;
        display = '0';
        break;

      case '=':
        operation2 = display;
        calcularResultado();
        break;

      default:
        adicionarNumero(number);
        break;
    }
  }

  void adicionarNumero(String number) {
    if (display == '0') {
      display = number;
    } else {
      display += number;
    }
  }

  void calcularResultado() {
    double numero1 = double.parse(operation1);
    double numero2 = double.parse(operation2);

    double resultado = 0;

    switch (typeOperation) {
      case '+':
        resultado = numero1 + numero2;
        break;

      case '-':
        resultado = numero1 - numero2;
        break;

      case 'x':
        resultado = numero1 * numero2;
        break;

      case '/':
        resultado = numero1 / numero2;
        break;
    }

    display = resultado.toString();

    operation1 = display;
    operation2 = '0';
    typeOperation = '';
  }
}