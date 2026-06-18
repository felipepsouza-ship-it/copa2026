import '../models/selecao.dart';

Future<List<Selecao>> carregarSelecoes() async {
  await Future.delayed(Duration(seconds: 1));

  return [
    Selecao(nome: "México", grupo: Grupo.A, rankingFifa: 15),
    Selecao(nome: "África do Sul", grupo: Grupo.A, rankingFifa: 59),
    Selecao(nome: "Rep. Tcheca", grupo: Grupo.A, rankingFifa: 36),
    Selecao(nome: "Coreia do Sul", grupo: Grupo.A, rankingFifa: 22),
  ];
}
