# Funções em Dart

Funções em Dart como em praticamente todas as linguagens de programação são pequenos pedaços de códigos reutilizáveis em diversas partes da aplicação.

Para se declarar uma função em Dart, primeiro decalara-se o tipo do retorno que a função irá possuir *(se não houver um retorno declara-se a função como sendo do tipo `void`, ou, simplesmente omite-se o tipo)*, depois declrara-se o nome da variável *(padrão adotado `camel-case`)*, seguido dos parâmetros ou não da função e o seu corpo entre chaves.

    void funcaoTal() {
      print('Olá Mundo!');
    }
    
    // void maind() {}
    funcaoTal();    // Olá Mundo!
    
 ## Função com parâmetros
 
 Em dart os parâmetros das funções são tipados, previnindo assim futuras inconsistências de implementações de código.
 
    void funcInt(int a) {
      print(a + a);
    }
    
    funcInt(2);   // 4
    
 ## Função com parâmetros opcionais
 
 Em Dart também é possível declarar funções com parâmetros opcionais. Sendo que os parâmetros opcionais são declarados dentro de `chaves` e na invocação da função deve-se declarar qual o parâmetro será utilizado através do nome do parâmetro.
 
    void funcOp(String a, {int b, double c}) {
      print(a);
    }
    
    funcOp('olá');             // olá null null
    funcOp('olá', b: 2);       // olá 2 null
    funcOp('olá', 2, 3.5);     // olá 2 3.5
    
## Função com parâmetros opcionais com valor padrão

Em Dart também podemos predefinir valores para os parâmetros.

    void funcOpNull(String a, {int b}) {
      print(a);
      print(b);               // null
      print(b ?? 10);         // definido valor
    }
    
    funcOp('olá');            // olá null 10

## Função como parâmetros de outra função

Em Dart é possível passar funções como parâmetros de outra função. Na chamada da função de parâmetro são omitidos os seus `parênteses`.

    void funcUm() {
      print('Função Um');
    }

    void funcDois(Function func) {       // função por parâmetro do tipo Function
      func();                            // executa a função passada
      print('Função Dois');
    }
    
    funcDois(funcUm);      // Função Um Função Dois

## Função anônima como parâmetro

Em Dart também é possível passar funções anônimas como parâmetro de outra função *(executar uma função como callback)*.

    void funcTres(String a, Function func) {
      print(a);
      func();
    }
    
    funcTres('Função Três', () {
      print('Função Anônima');
    });
    
## Função encurtada

Em dart também é possível encurtar a declaração de uma função se a mesma possuir apenas uma linha *(notação arrow function)*.

    int funcEnc(int a) => a + a;
    
    print(funcEnc(2));     // 4
    
