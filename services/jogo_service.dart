import 'dart:io';
import '../models/selecao.dart';

void registrarJogo(Selecao a, Selecao b) {
  try {
    print("\n${a.nome} x ${b.nome}");

    print("Gols ${a.nome}: ");
    int golsA = int.parse(stdin.readLineSync()!);

    print("Gols ${b.nome}: ");
    int golsB = int.parse(stdin.readLineSync()!);

    print("Cartões amarelos ${a.nome}: ");
    a.cartoesAmarelos += int.parse(stdin.readLineSync()!);

    print("Cartões amarelos ${b.nome}: ");
    b.cartoesAmarelos += int.parse(stdin.readLineSync()!);

    a.golsPro += golsA;
    a.golsSofridos += golsB;

    b.golsPro += golsB;
    b.golsSofridos += golsA;

    if (golsA > golsB) {
      a.pontos += 3;
    } else if (golsB > golsA) {
      b.pontos += 3;
    } else {
      a.pontos += 1;
      b.pontos += 1;
    }
  } catch (e) {
    print("Erro: Digite um valor válido!");
  }
}
