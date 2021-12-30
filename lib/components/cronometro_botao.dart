import 'package:flutter/material.dart';

class CronometroBotao extends StatelessWidget {
  final String texto;
  final IconData icone;
  final void Function()? clique;

  CronometroBotao({
    Key? key,
    required this.texto,
    required this.icone,
    this.clique,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        primary: Colors.black,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(35)
        ),
        padding: EdgeInsets.symmetric(
          horizontal: 30,
          vertical: 20,
        ),
        textStyle: TextStyle(fontSize: 25),
      ),
      onPressed: clique, child: Row(
      children: [Icon(icone, size: 35,),
      Text(texto)],
    ),);
  }
}
