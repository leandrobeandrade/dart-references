// Declaração da função sem retorno
void mostrarNome(nome) {
  print(nome);
}

// Declaração da função com retorno
String nomeCompleto(String nome, String sobrenome) {
  return nome + ' ' + sobrenome;
}

// Declaração da função resumida
String nomes(String nome) => nome * 3;

void main() {
  mostrarNome('Fulano de Tal');  // Fulano de Tal
  
  String resultado = nomeCompleto('Beltrano', 'de Tal');
  mostrarNome(resultado);  // Beltrano de Tal
  
  mostrarNome(nomes('Ciclano '));  // Ciclano Ciclano Ciclano
  
  // Chamada da função anônima
  mostrarNome((() => 'Belciclano')());  // Belciclano
}
