/*void main() {
    int name = 2;
    print("Hello world ${name.toString()}");
} */

void main() {
  String pessoa1 = Pessoa.nome('Iago');
  String pessoa2 = Pessoa.nome('Bruno');

  print(pessoa1);
}

class Pessoa {
  
  static String nome(String name) {
    return name;
  }
}
