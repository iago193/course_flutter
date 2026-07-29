/*void main() {
    int name = 2;
    print("Hello world ${name.toString()}");
} */

void main() {
  String pessoa1 = Pessoa.nome('Iago');

  print(pessoa1);
}

class Pessoa {
  String name = "";
  
  static String nome(String name) {
    return name;
  }
}
