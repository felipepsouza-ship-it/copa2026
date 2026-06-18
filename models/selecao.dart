enum Grupo { A, B, C, D, E, F, G, H, I, J, K, L }

class Selecao {
  String nome;
  Grupo grupo;

  int pontos = 0;
  int golsPro = 0;
  int golsSofridos = 0;
  int cartoesAmarelos = 0;
  int cartoesVermelhos = 0;
  int rankingFifa;

  Selecao({
    required this.nome,
    required this.grupo,
    required this.rankingFifa,
  });

  int get saldoGols => golsPro - golsSofridos;
}
