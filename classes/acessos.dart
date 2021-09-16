class Mod {
  static int vezes;                 // Não precisa instanciar o objeto, a prop é da classe
  static const maisVezes = 10;      // Não pode ter o valor modificado
}

class Mutavel {
  String nome;

  Mutavel(this.nome);
}

class Imutavel {
  String nome;

  Imutavel(this.nome);
}

abstract class Abs {                // Não pode ser instanciada apenas herdada
  void abst() {
    print('Classe abstrata!');
  }

  void zero();                      // metodo abstrato, somente assinatura
} 

class Inherit extends Abs {
  void zero() {                     // implementação método abstrato obrigatório
    print('algo');
  }

  void outro() {
    print('outro');
  }
}

void main() {
  Mod.vezes = 2;
  print(Mod.vezes);
  Mod.vezes = 4;
  print(Mod.vezes);

  print(Mod.maisVezes);
  // Mod.maisVezes = 33;    // ERRRO => não possui setter
  

  Mutavel mutavel = Mutavel('Fulano');
  print(mutavel.nome);    // Fulano

  mutavel = Mutavel('Beltrano');    // OK => 2 instâncias
  print(mutavel.nome);    // Beltrano

  final Imutavel imutavel = Imutavel('Fulano');
  print(imutavel.nome);    // Fulano

  imutavel = IMutavel('Beltrano');   // ERRO => não pode ter 2 instâncias
  

  Inherit inherint = Inherit();
  inherint.zero();
  inherint.outro();
}
