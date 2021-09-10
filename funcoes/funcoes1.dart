void zero() {                     // Declaração de função simples sem retorno
  print(0);
}

void soma(double a, int b) {      // Declaração de função simples com parâmetros
  dynamic res = a + b;
  print(res);
}

double area(double raio) {        // Declaração de função com parâmetros e retorno
  return 3.14 * raio * raio;
}

double areas(double raio) => 3.14 * raio * raio; // Declaração de função encurtada (arrow function)

void main() {
  zero();
  soma(1.5, 10);
  
  print(area(5.0));
}
