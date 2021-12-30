import 'package:flutter/material.dart';

class PaleCores {
  static const Color descanso = Colors.green;
  static const Color atividade = Colors.deepPurple;

  static const LinearGradient degradeStory =
  LinearGradient(
      begin: Alignment.topCenter, //posicao da primeira cor
      end: Alignment.bottomCenter,
      colors: [Colors.transparent, Colors.black54]
    // colors: [Colors.orange, Colors.red]
  );
}