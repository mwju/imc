// test/pessoa_test.dart
import 'package:test/test.dart';
import '../lib/pessoa.dart'; // Certifique-se de que o caminho está correto
void main() {
  group('Classificação do IMC', () {
    test('Classifica como Magreza Grave', () {
      final pessoa = Pessoa(nome: 'Teste', peso: 40, altura: 1.75); // IMC < 16
      expect(pessoa.classificarIMC(pessoa.calcularIMC()), 'Magreza Grave');
    });

    test('Classifica como Magreza Moderada)', () {
      final pessoa = Pessoa(nome: 'Teste', peso: 49, altura: 1.75); 
      expect(pessoa.classificarIMC(pessoa.calcularIMC()), 'Magreza Moderada');
    });

    test('Classifica como Magreza Leve', () {
      final pessoa = Pessoa(nome: 'Teste', peso: 53.59, altura: 1.75); // IMC entre 17 e <18.5
      expect(pessoa.classificarIMC(pessoa.calcularIMC()), 'Magreza Leve');
    });

    test('Classifica como Saudável', () {
      final pessoa = Pessoa(nome: 'Teste', peso: 70, altura: 1.75); // IMC entre 18.5 e <25
      expect(pessoa.classificarIMC(pessoa.calcularIMC()), 'Saudável');
    });

    test('Classifica como Sobrepeso', () {
      final pessoa = Pessoa(nome: 'Teste', peso: 80, altura: 1.75); // IMC entre 25 e <30
      expect(pessoa.classificarIMC(pessoa.calcularIMC()), 'Sobrepeso');
    });

    test('Classifica como Obesidade Grau 1', () {
      final pessoa = Pessoa(nome: 'Teste', peso: 95, altura: 1.75); // IMC entre 30 e <35
      expect(pessoa.classificarIMC(pessoa.calcularIMC()), 'Obesidade Grau 1');
    });

    test('Classifica como Obesidade Grau 2 (Severa)', () {
      final pessoa = Pessoa(nome: 'Teste', peso: 110, altura: 1.75); // IMC entre 35 e <40
      expect(pessoa.classificarIMC(pessoa.calcularIMC()), 'Obesidade Grau 2 (Severa)');
    });

    test('Classifica como Obesidade Grau 3 (Mórbida)', () {
      final pessoa = Pessoa(nome: 'Teste', peso: 130, altura: 1.75); // IMC >= 40
      expect(pessoa.classificarIMC(pessoa.calcularIMC()), 'Obesidade Grau 3 (Mórbida)');
    });
  });
}
