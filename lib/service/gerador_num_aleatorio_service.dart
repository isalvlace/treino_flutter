import 'dart:math';

class GeradorNumAleatorioService {
  static gerarNumeroAleatorio(int numMax) {
    Random numAleatorio = Random();
    return numAleatorio.nextInt(numMax);
  }
}