import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:pomodor_tech_work/components/cronometro.dart';
import 'package:pomodor_tech_work/components/entrada_tempo.dart';
import 'package:pomodor_tech_work/store/pomodoro.store.dart';
import 'package:pomodor_tech_work/utils/constants.dart';
import 'package:provider/provider.dart';

class Pomodoro extends StatelessWidget {
  const Pomodoro({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final store = Provider.of<PomodoroStore>(context);

    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(child: Cronometro()),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 40),
            child: Observer(
              builder: (_) => Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  EntradaTempo(
                    titulo: labelTrabalho,
                    valor: store.tempoTrabalho,
                    inc: store.iniciado && store.estaTrabalhando()
                        ? null
                        : store.incrementarTempoTrabalho,
                    dec: store.iniciado && store.estaTrabalhando()
                        ? null
                        : store.decrementarTempoTrabalho,
                  ),
                  EntradaTempo(
                    titulo: labelDescanso,
                    valor: store.tempoDescanso,
                    inc: store.iniciado && store.estaDescansando()
                        ? null
                        : store.incrementarTempoDescanso,
                    dec: store.iniciado && store.estaDescansando()
                        ? null
                        : store.decrementarTempoDescanso,
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
