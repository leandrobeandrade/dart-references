class GetterSetter {
  String nome;
  int _idade;           // _ convenção para privado
  double _salario;

  GetterSetter(this.nome);

  int get idade$ {       // Método para acesso da propriedade idade
    return _idade;
  }

  void set idade$(int idade) {       // Método para manipular o valor da propriedade idade
    _idade = idade;
  }

  double get salario$ => _salario;                           // Métodos abreviado
  
  void set salario$(double salario) => _salario = salario;
}

void main() {
  GetterSetter getset = GetterSetter('Ciclano');
  print(getset.nome);     // Ciclano
  getset.idade = 18;      // A pessoa Ciclano possui a idade 18.
  print('A pessoa ${getset.nome} possui a idade ${getset.idade}.');
  
  getset.salario$ = 1.532;
  print('A pessoa ${getset.nome} possui um salário de ${getset.salario$}');
}
