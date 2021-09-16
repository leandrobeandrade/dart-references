class Mod {
  static int vezes;             // Não precisa instanciar o objeto, a propriedade é da classe
  static const maisVezes = 10;  // Não pode ter o valor modificado
}

class Mutavel {
  void printa() {
    print('Muda');
  }
}

class ClasseImutavel {
  void printa() {
    print('Não muda');
  }
}

abstract class Abs {            // Não pode ser instanciada apenas herdada
  void abst() {
    print('Classe abstrata!');
  }

  void zero();                  // metodo abstrato, somente assinatura
} 

class Inherit extends Abs {
  void zero() {                 // implementação método abstrato obrigatório
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
  // Mod.maisVezes = 33;      // ERRRO => não possui setter

  Mutavel mutavel = Mutavel();
  mutavel.printa();

  mutavel = Mutavel();        // OK
  mutavel.printa();

  final ClasseImutavel clImut = ClasseImutavel();
  clImut.printa();

  // clImut = ClasseImutavel();   // ERRRO => não pode ter 2 instâncias

  Inherit inherint = Inherit();
  inherint.zero();
  inherint.outro();
}
