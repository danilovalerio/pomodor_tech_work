import 'package:flutter/material.dart';
import 'package:pomodor_tech_work/pages/pomodoro_page.dart';

void main() {
  runApp(const MyApp());
}


//TODO: Componente Botão Cronometro

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const Pomodoro(),
    );
  }
}
