void main() {

  String nome = 'Fulano';
  bool masculino = true;
  int idade = 18;
  double peso = 64.30;
  var altura = 1.72;            		// tipo imutável
  dynamic linguagens = 'Dart';
	final nums = 123;			// valor imutável

	print(nome);				// Fulano
  print(masculino);				// true
  print(idade);					// 18
  print(peso);					// 64.3
  print(altura);				// 1.72
  print(linguagens);				// Dart
	print(nums);				// 123

  linguagens = ['Dart', 'TypeScript'];
  print(linguagens);				// ['Dart', 'TypeScript']
	
	nums = 456;				// ERRO 
}
