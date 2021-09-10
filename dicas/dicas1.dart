// ?? => Verifica se o primeiro argumento passado é diferente de null, se sim retorna a primeira sentença, caso contrário, retorna a segunda

void main() {
  String nome1 = 'Fulano';
  String nome2;     // Variável sem um valor, nula
  
  String nome3;
  String nome4;
  
  nome3 = nome1 ?? 'Ciclano';
  nome4 = nome2 ?? 'Beltrano';
  
  print(nome3);     // Fulano
  print(nome4);     // Beltrano
}
