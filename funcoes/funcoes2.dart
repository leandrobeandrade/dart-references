void params(String a, String b, String c) {                       // Delacração de função com parâmetros
  print(a);
  print(b);
  print(c);
}

void opcionaisParams(String a, {String b, String c}) {            // Declaração de função com parâmetros opcionais
  print(a);
  print(b);
  print(c);
}

void opcionaisParamsNulos(String a, {String b, String c}) {       // Declaração de função com parâmetros nulos
  print(a);
  print(b ?? 'Beltrano');
  print(c ?? 'Ciclano');
}

void main() {
  params('Fulano', 'Ciclano', 'Beltrano');    // Fulano Beltrano Ciclano
  
  opcionaisParams('Fulano');                  // Fulano null null
  opcionaisParams('Fulano', b: 'Ciclano');    // Fulano Ciclano null
  
  opcionaisParamsNulos('Fulano');             // Fulano Beltrano Ciclano
}
