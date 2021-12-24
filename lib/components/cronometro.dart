import 'package:flutter/material.dart';

class Cronometro extends StatelessWidget {
  const Cronometro({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.red,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text("Hora de Trabalhar",
          style: TextStyle(
            fontSize: 40,
            color: Colors.white,
          ),)
        ],
      ),
    );
  }
}
