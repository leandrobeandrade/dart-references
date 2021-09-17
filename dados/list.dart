class ListPessoas {
  String nome;
  int idade;

  ListPessoas(this.nome, this.idade);
}

void main() {
  List<String> nomes = ['Fulano', 'Beltrano', 'Ciclano'];
  print(nomes);                       // [Fulano, Beltrano, Ciclano]
  print(nomes[0]);                    // Fulano
  print(nomes.length);                // 3

  nomes.add('Belciclano');
  print(nomes);                       // [Fulano, Beltrano, Ciclano, Belciclano]

  nomes.removeAt(2);
  print(nomes);                       // [Fulano, Beltrano, Belciclano]

  nomes.insert(2, 'Beltrano');
  print(nomes);                       // [Fulano, Beltrano, Beltrano, Belciclano]

  print(nomes.contains('Outros'));    // false

  List<ListPessoas> listP = List();
  listP.add(ListPessoas('Kevin', 5));
  listP.add(ListPessoas('George', 12));
  listP.add(ListPessoas('Michael', 8));
  
  for(ListPessoas lP in listP) {
    print('${lP.nome} - ${lP.idade}');    // Kevin - 5  George - 12  Michael - 8
  }

  var listaPrePreenchida = List<int>.filled(5, 0);    // Prenche a lista com 5 posições com valores 0
  print(listaPrePreenchida);           // [0, 0, 0, 0, 0]
  print(listaPrePreenchida.length);    // 5
  listaPrePreenchida[0] = 87;
  print(listaPrePreenchida);           // [87, 0, 0, 0, 0]

  //listaPrePreenchida.length = 0;  // Erro
  //listaPrePreenchida.add(499);    // Erro
}
