// pessoa.dart
class Pessoa {
  String nome;
  double peso;
  double altura;

  Pessoa({required this.nome, required this.peso, required this.altura});

  double calcularIMC() {
    return peso / (altura * altura);
  }

  String classificarIMC(double imc) {
    if (imc < 16) return 'Magreza Grave';
    if (imc >= 16 && imc < 17) return 'Magreza Moderada';
    if (imc >= 17 && imc < 18.5) return 'Magreza Leve';
    if (imc >= 18.5 && imc < 25) return 'Saudável';
    if (imc >= 25 && imc < 30) return 'Sobrepeso';
    if (imc >= 30 && imc < 35) return 'Obesidade Grau 1';
    if (imc >= 35 && imc < 40) return 'Obesidade Grau 2 (Severa)';
    return 'Obesidade Grau 3 (Mórbida)';
  }

}
