import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:pomodor_tech_work/components/cronometro_botao.dart';
import 'package:pomodor_tech_work/store/pomodoro.store.dart';
import 'package:provider/provider.dart';

final store = PomodoroStore();

class Cronometro extends StatelessWidget {
  const Cronometro({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Observer(builder: (_) => Container(
        color: store.estaTrabalhando() ? Colors.red : Colors.green,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
                store.estaTrabalhando()
                    ? "Hora de Trabalhar"
                    : "Hora de Descansar",
                style: TextStyle(fontSize: 40, color: Colors.white)),
            SizedBox(height: 20),
            Text(
                "${store.minutos.toString().padLeft(2, '0')}:${store.segundos.toString().padLeft(2, '0')}",
                // "${2.toString().padLeft(2, '0')}:${0.toString().padLeft(2, '0')}",
                style: TextStyle(fontSize: 120, color: Colors.white)),
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                if (!store.iniciado)
                  CronometroBotao(
                    texto: 'Iniciar',
                    icone: Icons.play_arrow,
                    clique: store.iniciar,
                  ),
                if (store.iniciado)
                  CronometroBotao(
                    texto: 'Parar',
                    icone: Icons.stop,
                    clique: store.parar,
                  ),
                CronometroBotao(
                  texto: 'Reiniciar',
                  icone: Icons.refresh,
                  clique: store.reiniciar,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
