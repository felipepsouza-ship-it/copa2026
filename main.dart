import 'dart:io';      
import 'models/selecao.dart';
import 'services/dados_service.dart';
import 'services/jogo_service.dart';
import 'services/classificacao_service.dart';

void main() async {
  List<Selecao> selecoes = await carregarSelecoes();

  while (true) {
    print("\n=== COPA 2026 - GRUPO A ===");
    print("1 - Registrar jogo");
    print("2 - Ver classificação");
    print("3 - Sair");

    String op = stdin.readLineSync()!;

    if (op == "1") {
      registrarJogo(selecoes[0], selecoes[1]);
    }

    if (op == "2") {
      ordenar(selecoes);
      mostrar(selecoes);
    }

    if (op == "3") {
      break;
    }
  }
}
