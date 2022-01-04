import 'package:flutter/material.dart';
import 'package:pomodor_tech_work/utils/constants.dart';
import 'package:pomodor_tech_work/utils/paleta_cores.dart';

///Componente responsável pela entrada de tempo de trabalho e de descanso
class EntradaTempo extends StatelessWidget {
  final String titulo;
  final int valor;

  ///funções para incrementar e decrementar valor
  final void Function()? inc;
  final void Function()? dec;

  const EntradaTempo({
    Key? key,
    required this.titulo,
    required this.valor,
    this.inc,
    this.dec,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Text(
          titulo,
          style: const TextStyle(
            fontSize: 25,
            fontWeight: FontWeight.bold,
          ),
        ),
        const SizedBox(
          height: 12,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: this.dec,
              child: const Icon(
                Icons.arrow_downward,
                color: Colors.white,
              ),
              style: ElevatedButton.styleFrom(
                shape: CircleBorder(),
                padding: EdgeInsets.all(15),
                primary: (this.titulo.compareTo(labelTrabalho) == 0)
                    ? PaleCores.atividade
                    : PaleCores.descanso,
                elevation: 5,
              ),
            ),
            Text(
              '$valor min',
              style: const TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
            ElevatedButton(
              onPressed: this.inc,
              child: const Icon(
                Icons.arrow_upward,
                color: Colors.white,
              ),
              style: ElevatedButton.styleFrom(
                shape: CircleBorder(),
                padding: EdgeInsets.all(15),
                primary: (this.titulo.compareTo(labelTrabalho) == 0)
                    ? PaleCores.atividade
                    : PaleCores.descanso,
                elevation: 5,
              ),
            ),
          ],
        ),
      ],
    );
  }
}
