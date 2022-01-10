import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:pomodor_tech_work/components/cronometro_botao.dart';
import 'package:pomodor_tech_work/store/pomodoro.store.dart';
import 'package:pomodor_tech_work/utils/paleta_cores.dart';
import 'package:provider/provider.dart';

class Cronometro extends StatelessWidget {
  Cronometro({Key? key}) : super(key: key);

  PomodoroStore? store;

  @override
  Widget build(BuildContext context) {
    store = Provider.of<PomodoroStore>(context);
    final player = AudioCache(prefix: 'assets/audio/');
    player.loadAll(['iniciatrabalho.mp3','fim_descanso_suave.mp3']);

    return Observer(
      builder: (_) => Container(
        color:
            store!.estaTrabalhando()
                ? PaleCores.atividade
                : PaleCores.descanso,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Semantics(
              label: 'Cronometro',
              child: Text(
                  store!.estaTrabalhando()
                      ? "Hora de Trabalhar"
                      : "Hora de Descansar",
                  style: TextStyle(fontSize: 40, color: Colors.white)),
            ),
            SizedBox(height: 20),
            Text(
                "${store?.minutos.toString().padLeft(2, '0')}:${store?.segundos.toString().padLeft(2, '0')}",
                // "${2.toString().padLeft(2, '0')}:${0.toString().padLeft(2, '0')}",
                style: TextStyle(fontSize: 120, color: Colors.white),
            semanticsLabel: "${store?.minutos.toString().padLeft(2, '0')}:${store?.segundos.toString().padLeft(2, '0')} minutos",),
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                if (!store!.iniciado)
                  CronometroBotao(
                    texto: 'Iniciar',
                    icone: Icons.play_arrow,
                    clique: store?.iniciar,
                  ),
                if (store!.iniciado)
                  CronometroBotao(
                    texto: 'Parar',
                    icone: Icons.stop,
                    clique: store!.parar,
                  ),
                CronometroBotao(
                  texto: 'Reiniciar',
                  icone: Icons.refresh,
                  clique: store!.reiniciar,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
