# Classes em Dart

Classes possui um importante papel na implementação da linguagem Dart, assim como em todas as linguagens orientada a objetos. É através delas que é possível 
representar abstrações de conjuntos de elementos com propriedades e métodos similares, podendo assim, ter o seu comportamento reutilizado em várias partes do 
código. 

**Observações:** 

| Em Dart não existe a necessidade de se utilizar a palavra reservada **`new`** para instanciar uma classe.

| Existem várias formas de se implementar o construtor de uma classe em Dart.

Exemplo simples de implementação de uma classe em Dart:

    class Pessoa {
      String nome;
      int idade;
      double altura;

      void dormir() {
        print('$nome está dormindo!');
      }

      void niver() {
        idade++;
      }
    }
    
    void main() {
      Pessoa pessoa = Pessoa();         // sem new
      pessoa.nome = 'Fulano';
      pessoa.idade = 30;
      pessoa.altura = 1.78;

      print(pessoa.nome);               // Fulano
      print(pessoa.idade);              // 30
      print(pessoa.altura);             // 1.78
  
      pessoa.dormir();                  // Fulano está dormindo
      pessoa.niver();
      print(pessoa.idade);              // 31
    }

## Características

Assim como em outras linguagens Dart também possibilita os paradigmas da orientação a objetos:

- Herança
- Classe Abstrata
- Polimorfismo (sobrescrita) não suporta a sobrecarga de método devido a sua natureza de tipagem
- Injeção de Dependência
- Modificadores de acesso
- Getters/Setters
