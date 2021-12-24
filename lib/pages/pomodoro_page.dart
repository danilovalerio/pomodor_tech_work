import 'package:flutter/material.dart';
import 'package:pomodor_tech_work/components/entrada_tempo.dart';

class Pomodoro extends StatelessWidget {
  const Pomodoro({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: const [
          Text('Pomodoro page'),
          EntradaTempo(titulo: 'Trabalho', valor: 25),
          EntradaTempo(titulo: 'Descanso', valor: 5),
        ],
      ),
    );
  }
}
