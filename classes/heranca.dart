class Animal {                          // Classe Genérica
  String nome;
  double peso;
  String som;

  Animal(this.nome, this.peso, this.som);

  void comer() {
    print('$nome está comendo!');
  }

  void fazSom() {
    print('$nome faz o som: $som');
  }

  String toString() {
    return 'Animal | Nome: $nome, Peso: $peso, Som: $som';
  }
}

class Cachorro extends Animal {         // Classe especializada herdando genérica
  int fofura;

  Cachorro(String nome, double peso, String som, this.fofura) : super(nome, peso, som);

  void brincar() {
    fofura += 10;
    print('Fofura do $nome aumentou para $fofura');
  }

}

class Gato extends Animal {             // Classe especializada herdando genérica
  bool amigavel;

  Gato(String nome, double peso, String som, this.amigavel) : super(nome, peso, som);

  void estaAmigavel() {
    if(this.amigavel) print('Está amigável: SIM');
    else print('Está amigável: NÃO');
  }
}

void main() {
  Animal animal = Animal('Lulu', 3.50, 'AU AU AU');
  print(animal);      // Animal | Nome: Lulu, Peso: 3.5, Som: AU AU AU
  animal.comer();     // Lulu está comendo!
  animal.fazSom();    // Lulu faz o som: AU AU AU

  Cachorro cachorro = Cachorro('Bob', 4.00, 'AU AU AU', 3);
  cachorro.comer();       // Bob está comendo!
  cachorro.brincar();     // Fofura do Bob aumentou para 13

  Gato gato = Gato('Felix', 2.30, 'MIAU', false);
  gato.comer();           // Felix está comendo!
  gato.estaAmigavel();    // Está amigável: NÃO
}
