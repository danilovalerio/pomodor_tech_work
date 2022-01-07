import 'package:flutter/material.dart';
import 'package:line_icons/line_icons.dart';
import 'package:pomodor_tech_work/pages/pomodoro_page.dart';
import 'package:pomodor_tech_work/ui_prefs/styles_text.dart';

class DescriptionMethod extends StatelessWidget {
  const DescriptionMethod({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            children: [
              Card(
                elevation: 2,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: <Widget>[
                    Expanded(
                      child: Text(
                        'Técnica Pomodoro',
                        style: TextStyle(
                            color: Theme.of(context).primaryColor,
                            fontWeight: FontWeight.w900,
                            fontSize: 32),
                        textAlign: TextAlign.center,
                      ),
                    ),
                    IconButton(
                      icon: Icon(LineIcons.timesCircle),
                      color: Theme.of(context).primaryColor,
                      onPressed: () {
                        Navigator.of(context).pushReplacement(MaterialPageRoute(
                            builder: (context) => Pomodoro()));
                      },
                    ),
                  ],
                ),
              ),
              Container(
                child: Column(
                  children: [
                    Padding(
                      padding: paddingDefault,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Expanded(
                            child: RichText(
                              softWrap: true,
                              text: TextSpan(
                                children: [
                                  TextSpan(
                                      text:
                                          """É uma técnica que foi criada pelo italiano Francesco Cirillo no fim da década de 80.\n
1 pomodoro é o tempo de 25 minutos focado em uma tarefa de sua escolha.\n
Ao término de cada pomodoro faça uma pausa de 5 minutos.\n
                                      """,
                                      style: textBodyOne),
                                  TextSpan(
                                    text:
                                        "Veja a seguir um ciclo de 4 pomodoros",
                                    style: subTitleBold,
                                  )
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Expanded(
                          child: Image.asset(
                            'assets/images/fluxo_exemplar.JPG',
                            fit: BoxFit.cover,
                          ),
                        ),
                      ],
                    ),
                    Padding(
                      padding: paddingDefault,
                      child: Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Icon(LineIcons.tasks),
                              SizedBox(width: 24),
                              Text(
                                '1. Escolha uma tarefa para ser executada',
                                style: textBodyBold,
                              )
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Icon(LineIcons.crosshairs),
                              SizedBox(width: 24),
                              Text('2. Foque nessa tarefa por 25 minutos',
                                  style: textBodyBold)
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Icon(LineIcons.coffee),
                              SizedBox(width: 24),
                              Text('3. Faça uma pausa de 5 minutos',
                                  style: textBodyBold)
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Icon(LineIcons.crosshairs),
                              SizedBox(width: 24),
                              Text('4. Foque nessa tarefa por 25 minutos',
                                  style: textBodyBold)
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Icon(LineIcons.coffee),
                              SizedBox(width: 24),
                              Text('5. Faça uma pausa de 5 minutos',
                                  style: textBodyBold)
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Icon(LineIcons.crosshairs),
                              SizedBox(width: 24),
                              Text('6. Foque nessa tarefa por 25 minutos',
                                  style: textBodyBold)
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Icon(LineIcons.coffee),
                              SizedBox(width: 24),
                              Text('7. Faça uma pausa de 5 minutos',
                                  style: textBodyBold)
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Icon(LineIcons.crosshairs),
                              SizedBox(width: 24),
                              Text('8. Foque nessa tarefa por 25 minutos',
                                  style: textBodyBold)
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Icon(LineIcons.coffee),
                              SizedBox(width: 24),
                              Text('9. Faça uma pausa de 5 minutos',
                                  style: textBodyBold)
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Icon(LineIcons.userClock),
                              SizedBox(width: 24),
                              Text('10. Faça um descanso de 15 a 30 minutos',
                                  style: textBodyBold)
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
