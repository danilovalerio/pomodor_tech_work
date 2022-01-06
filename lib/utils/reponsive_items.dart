import 'package:flutter/cupertino.dart';

///Retorna o tamanho de texto responsivo
double fontSizeReponsive({required BuildContext context, required int size}) {
  final fontSize = size * MediaQuery.of(context).textScaleFactor;
  return fontSize;
}