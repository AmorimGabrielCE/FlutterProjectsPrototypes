class Operacoes {
  double soma(double var1, double var2) => var1 + var2;
  double subtracao(double var1, double var2) => var1 - var2;
  double multiplicacao(double var1, double var2) => var1 * var2;
  double divisao(double var1, double var2) => var1 / var2;

  String operationSymbol(String operation) {
    if (operation == 'sum') {
      return '+';
    } else if (operation == 'minus') {
      return '-';
    } else if (operation == 'multiple') {
      return '*';
    } else if (operation == 'division') {
      return '/';
    } else {
      return '';
    }
  }
}
