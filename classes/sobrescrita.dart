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
    return this.salario * 0.20;      // Mesmo nome, mesmo tipo de retorno e parâmetros (se existirem), mas, com o interior diferente
  }
}

void main() {
  Funcionario funcionario = Funcionario('Fulano', 11111111111, 3.530);
  print(funcionario);                     // Fulano 11111111111 3.53
  print(funcionario.calculaBonus());      // 0.353
  
  Gerente gerente = Gerente('Ciclano', 22222222222, 5.610, 'Engenharia');
  print(gerente);                         // Ciclano 22222222222 5.61 Engenharia
  print(gerente.calculaBonus());          // 1.122
}
