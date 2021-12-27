import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:pomodor_tech_work/components/cronometro_botao.dart';

class Cronometro extends StatelessWidget {
  const Cronometro({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.red,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text("Hora de Trabalhar",
              style: TextStyle(fontSize: 40, color: Colors.white)),
          SizedBox(height: 20),
          Text("25:00", style: TextStyle(fontSize: 120, color: Colors.white)),
          SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              CronometroBotao(texto: 'Iniciar', icone: Icons.play_arrow),
              // CronometroBotao(texto: 'Parar', icone: Icons.stop),
              CronometroBotao(texto: 'Reiniciar', icone: Icons.refresh),
            ],
          ),
        ],
      ),
    );
  }
}
