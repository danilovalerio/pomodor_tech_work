
import 'dart:async';

import 'package:mobx/mobx.dart';
import 'package:pomodor_tech_work/utils/player_audio_helper.dart';

part 'pomodoro.store.g.dart';

class PomodoroStore = _PomodoroStore with _$PomodoroStore;

//TODO: Remover esse cara para uma pasta que contem os ENUMS
enum TipoIntervalo {TABALHO, DESCANSO}

abstract class _PomodoroStore with Store {
  @observable
  bool iniciado = false;

  @observable
  int minutos = 0;

  @observable
  int segundos = 0;

  @observable
  int tempoTrabalho = 25;

  @observable
  int tempoDescanso = 5;

  @observable
  TipoIntervalo tipoIntervalo = TipoIntervalo.TABALHO;

  ///Utilizado para controlar o tempo
  Timer? cronometro;

  ///Iniciliazar o audioHelper
  AudioHelper player = AudioHelper();

  @action
  void iniciar() {
    iniciado = true;
    player.clique();
    cronometro = Timer.periodic(Duration(seconds: 1), (timer) {
      ///O código que estiver aqui dentro será chamada a cada 1 segundo
      if(minutos == 0 && segundos == 0) {
        ///se zerou trocar o tipo de intervalo
        _trocarTipoIntervalo();
      } else if(segundos == 0) {
        segundos = 59;
        minutos--;
      } else {
        segundos--;
      }
    });
  }

  @action
  void parar() {
    iniciado = false;
    cronometro?.cancel();
  }

  @action
  void reiniciar() {
    iniciado = false;
    parar();
    ///Restaura os minutos e segundos
    minutos = estaTrabalhando() ? tempoTrabalho : tempoDescanso;
    segundos = 0;
  }

  @action
  void incrementarTempoTrabalho() {
    tempoTrabalho++;
    if(estaTrabalhando()) {
      reiniciar();
    }
  }

  @action
  void decrementarTempoTrabalho() {
    if(tempoTrabalho > 0) {
      tempoTrabalho--;
    }

    if(estaTrabalhando()) {
      reiniciar();
    }
  }

  @action
  void incrementarTempoDescanso() {
    tempoDescanso++;
    if(estaDescansando()) {
      reiniciar();
    }
  }

  @action
  void decrementarTempoDescanso() {
    if(tempoDescanso > 0) {
      tempoDescanso--;
    }

    if(estaDescansando()) {
      reiniciar();
    }
  }

  bool estaTrabalhando() {
    return tipoIntervalo == TipoIntervalo.TABALHO;
  }

  bool estaDescansando() {
    return tipoIntervalo == TipoIntervalo.DESCANSO;
  }

  void _trocarTipoIntervalo() {
    if(estaTrabalhando()) {
      tipoIntervalo = TipoIntervalo.DESCANSO;
      player.descansar();
      minutos = tempoDescanso;
    } else {
      tipoIntervalo = TipoIntervalo.TABALHO;
      player.trabalhar();
      minutos = tempoTrabalho;
    }
    segundos = 0;
  }

}