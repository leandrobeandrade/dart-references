# Tipos de Dados em DART

O Dart é `tipado estaticamente`, o que significa que cada variável no Dart tem um tipo que deve ser conhecido quando você compila o código. O tipo de variável 
não pode ser alterado quando você executa o programa. Isso contrasta com linguagens como Python e JavaScript, que são tipados dinamicamente. Se você não especificar
explicitamente um tipo de dados, o Dart usa a **inferência de tipo** para tentar determiná-lo, assim como fazem as linguagens Swift e Kotlin por exemplo.

- **`String` =>** declara uma variável como sendo do tipo string
 
 	  String nome = 'Fulano';
 	
- **`int` =>** declara uma variável como sendo do tipo inteiro

	  int idade = 20;
	
- **`double` =>** declara uma variável como sendo do tipo ponto flutuante *(float)*

	  double preco = 10.5;
	
- **`bool` =>** declara uma variável como sendo do tipo booleano

	  bool masculino = true;
	
- **`dynamic` =>** declara uma variável como sendo de qualquer tipo e seu valor pode ser mudado

      dynamic algo = '10';      <= tipo String
      algo = 10;                <= tipo int
      
- **`var` =>** declara uma variável com um tipo específico imutável, mas, seu valor pode ser mudado

      var algo = '10';          <= tipo String
      algo = '55';              <= OK - mudou o valor
      algo = 456;               <= ERRO - mudou o tipo
      
     **Obs:** Quando var é definido sem um valor inicial, var se torna do tipo dynamic
      
      var algo;                 <= sem valor
      algo = 123;               <= OK - tipo int
      algo = 'olá';             <= OK - tipo String
      
- **`final` =>** declara uma variável com um valor imutável

      final nums = 123;
      nums = 456;               <= ERRO - mudou o valor

