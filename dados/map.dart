class MapPessoas {
  int idade;

  MapPessoas(this.idade);
}

void main() {
  Map<int, String> dds = Map();   // Cria uma Map com as chaves do tipo inteiro e valors string
  dds[11] = 'São Paulo';
  dds[19] = 'Campinas';
  dds[13] = 'Sei lá';
  
  print(dds);             // {11: São Paulo, 19: Campinas, 13: Sei lá}
  print(dds.keys);        // (11, 19, 13)
  print(dds.values);      // (São Paulo, Campinas, Sei lá)
  dds.remove(11);               
  print(dds.keys);        // (19, 13)
  print(dds.length);      // 2

  Map<String, dynamic> users = Map();   // Cria uma Map com as chaves do tipo string e valores dinâmicos
  users['nome'] = 'Fulano';
  users['idade'] = 35;
  users['peso'] = 73.40;
  print(users);    // {nome: Fulano, idade: 35, peso: 73.4}

  Map<String, MapPessoas> pessoas = Map();    // Cria uma Map com a chave do tipo string e valor string
  pessoas['Beltrano'] = MapPessoas(48);
  pessoas['Ciclano'] = MapPessoas(19);
  print(pessoas.keys);    // (Beltrano, Ciclano)
  
  for (var pesssoa in pessoas.values) {
    print(pessoa.idade);   // 48 19
  }
}
