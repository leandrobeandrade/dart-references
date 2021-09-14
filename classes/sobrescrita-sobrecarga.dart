class Funcionario {
  String nome;
  String cpf;
  double salario;

  double calculaBonus() {
    return salario * 0.10;
  }
}

// SOBRESCRITA DE MÉTODOS
class Gerente extends Funcionario {
  String setor;
  
  Gerente(String nome, String cpf, double salario, this.setor) : super(nome, cpf, salario);

  @override
  double calculaBonus() {
    return this.salario * 0.20;      // Mesmo nome, mesmo tipo de retorno e parâmetros (se existirem) com valor de retorno diferente
  }
}

// SOBRECARGA DE MÉTODOS
public class Valores extends Funcionario {
  
  Valores(String nome, String cpf, double salario) : super(nome, cpf, salario);
  
  int calc(int num1, int num2) {
    return num1 + num2;
  }

  double calc(double num1, double num2) {   // Mesmo nome, retornos, parâmetros e valores diferentes
    return num1 * num2;
  }
}


void main() {
  Funcionario funcionario = Funcionario('Fulano', 11111111111, 3.530);
  print(funcionario);                     // Fulano 11111111111 3.53
  print(funcionario.calculaBonus());      // 0.353
  
  Gerente gerente = Gerente('Ciclano', 22222222222, 5.610, 'Engenharia');
  print(gerente);                         // Ciclano 22222222222 5.61 Engenharia
  print(gerente.calculaBonus());          // 1.122
 
  Valores valores = Valores('Beltrano', '33333333333', 2.150);
  print(valores);                         // Beltrano 33333333333, 2.15
  print(valores.calc(10, 10));            // 20
  print(valores.calc(2.3, 4.1));          // 9.43
  print(valores.calculaBonus());          // 0.215 (Calculou com base no valor 0.10, não foi sobrescrito o método da classe Funcionario na Valores)
}
