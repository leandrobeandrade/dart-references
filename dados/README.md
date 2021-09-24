# Estrutura de Dados em Dart

A linguagem Dart fornece algumas formas de se estruturar dados em uma aplicação de uma forma simples e poderosa, para que possamos armazenar e manipular esses 
dados de maneira clara, simples e coesa.

## List

Uma coleção indexável de objetos com um comprimento. As subclasses desta classe implementam diferentes tipos de listas. Os tipos mais comuns de listas são:

- Lista de comprimento fixo. Ocorre um erro ao tentar usar operações que podem alterar o comprimento da lista
- Lista que pode ser aumentada

As listas são iteráveis. A iteração ocorre sobre os valores na ordem do índice. Alterar os valores não afeta a iteração, mas alterar os índices válidos - ou seja, 
*alterar o comprimento da lista* - entre as etapas de iteração causa um **ConcurrentModificationError**.


Geralmente, não é permitido modificar o comprimento da lista (adicionar ou remover elementos) enquanto uma operação na lista está sendo realizada, por exemplo, 
durante uma chamada para forEach ou sort. Alterar o comprimento da lista enquanto ela está sendo iterada, seja por iteração direta ou por meio da iteração de um 
Iterable que é apoiado pela lista, interromperá a iteração.

**Exemplo de List**

    var listaPrePreenchida = List<int>.filled(5, 0);    // preenche a lista com 5 posições com valores 0
    print(listaPrePreenchida.length);   // 5        
    listaPrePreenchida[0] = 87;   // Muda o valor da lista na primeira posição
    print(listaPrePreenchida);    // [87, 0, 0, 0, 0]
    
## Map

Uma coleção de pares de `chave/valor`, a partir da qual você recupera um valor usando sua chave associada. Havendo um número finito de chaves no mapa e cada 
chave possui exatamente um valor associado a ela. Mapas e suas chaves e valores podem ser iterados. A ordem da iteração é definida pelo tipo individual de mapa. 
Exemplos:

- O [HashMap](https://api.dart.dev/stable/2.14.2/dart-collection/HashMap-class.html) simples não está ordenado (nenhuma ordem é garantida)
- O [LinkedHashMap](https://api.dart.dev/stable/2.14.2/dart-collection/LinkedHashMap-class.html) itera na ordem de inserção da chave
- Um mapa classificado como [SplayTreeMap](https://api.dart.dev/stable/2.14.2/dart-collection/SplayTreeMap-class.html) itera as chaves em ordem classificada

Geralmente, não é permitido modificar o mapa (adicionar ou remover chaves) enquanto uma operação está sendo executada no mapa, por exemplo, em funções chamadas 
durante uma chamada forEach ou putIfAbsent. Modificar o mapa durante a iteração das chaves ou valores também pode interromper a iteração.

Geralmente, não é permitido modificar a igualdade das chaves (e, portanto, não seu hashcode) enquanto elas estão no mapa. Alguns subtipos especializados podem 
ser mais permissivos e, nesse caso, devem documentar esse comportamento.

**Exemplo de Map literal**

    Map<String, dynamic> carro = {
      'marca': 'Fiat',
      'valor': 35.653
    };

    print(carro);
    print(carro['marca']);
    print(carro['valor']);

**Exemplo de Map instânciado**

    Map<String, dynamic> usuarios = Map();
    usuarios['nome'] = 'Fulano';
    usuarios['idade'] = 35;
    usuarios['peso'] = 73.40;
    print(usuarios);   // {Fulano 35 73.4}
