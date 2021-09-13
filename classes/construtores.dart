class ClasseUm {
  String nome;
  int idade;
  double peso;

  ClasseUm(String nome, int idade, double peso) {         // Padrão
    this.nome = nome;
    this.idade = idade;
    this.peso = peso;
  }
}

class ClasseDois {
  String nome;
  int idade;
  double peso;

  ClasseDois(this.nome, this.idade, this.peso);           // Encurtada
}

class ClasseTres {
  String nome;
  int idade;
  double peso;
  
  ClasseTres(this.nome, this.idade, this.peso); 

  ClasseTres.nascer(this.nome, this.peso) {               // Construtor específico (nomeado)
    idade = 0;
    print('$nome nasceu com o peso: $peso kg.');
  }
}

void main() {
  ClasseUm um = ClasseUm('Fulano', 10, 26.30);
  print(um.nome);       // Fulano
  print(um.idade);      // 10
  print(um.peso);       // 26.30

  ClasseDois dois = ClasseDois('Beltrano', 20, 66.15);
  print(dois.nome);     // Beltrano
  print(dois.idade);    // 20
  print(dois.peso);     // 66.15
  
  ClasseTres tres = ClasseTres('Ciclano', 40, 70.1);
  print(tres.nome);     // Ciclano
  print(tres.idade);    // 40
  print(tres.peso);     // 70.1
  
  ClasseTres nascer = ClasseTres.nascer('Belciclano', 3.225);     // Belciclano nasceu com o peso 3.225 kg.
}
