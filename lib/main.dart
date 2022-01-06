import 'package:flutter/material.dart';
import 'package:pomodor_tech_work/pages/pomodoro_page.dart';
import 'package:pomodor_tech_work/store/pomodoro.store.dart';
import 'package:pomodor_tech_work/ui_prefs/theme.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}


//TODO: Componente Botão Cronometro

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Provider(
      create: (_) => PomodoroStore(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Pomodoro Tech Work',
        theme: myTheme(context),
        home: const Pomodoro(),
      ),
    );
  }
}
