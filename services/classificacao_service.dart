import '../models/selecao.dart';

void ordenar(List<Selecao> selecoes) {
  selecoes.sort((a, b) {
    if (b.pontos != a.pontos) return b.pontos - a.pontos;
    if (b.saldoGols != a.saldoGols) return b.saldoGols - a.saldoGols;
    if (b.golsPro != a.golsPro) return b.golsPro - a.golsPro;
    if (a.cartoesAmarelos != b.cartoesAmarelos)
      return a.cartoesAmarelos - b.cartoesAmarelos;
    return a.rankingFifa - b.rankingFifa;
  });
}

void mostrar(List<Selecao> selecoes) {
  print("\nPos | Seleção | Pts | SG | GP | Ranking");
  print("----------------------------------------");

  for (int i = 0; i < selecoes.length; i++) {
    var s = selecoes[i];
    print("${i + 1}º | ${s.nome} | ${s.pontos} | ${s.saldoGols} | ${s.golsPro} | ${s.rankingFifa}");
  }
}
