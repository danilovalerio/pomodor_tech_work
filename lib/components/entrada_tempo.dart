import 'package:flutter/material.dart';

///Componente responsável pela entrada de tempo de trabalho e de descanso
class EntradaTempo extends StatelessWidget {
  final String titulo;
  final int valor;

  const EntradaTempo({
    Key? key,
    required this.titulo,
    required this.valor,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(titulo),
        Text(valor.toString()),
      ],
    );
  }
}
