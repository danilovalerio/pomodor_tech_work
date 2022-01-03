import 'package:audioplayers/audioplayers.dart';

const String horaTrabalhar = 'fala_hora_trabalhar.mp3';
const String horaDescansar = 'fala_hora_descansar.mp3';
const String iniciarTrabalho = 'iniciatrabalho.mp3';

///Responsavel por centralizar os audios utilizados no app
class AudioHelper {
  static final AudioHelper _instance = AudioHelper._privateConstructor();
  static AudioCache? _audioCache;

  factory AudioHelper(){
    _audioCache = AudioCache(prefix: 'assets/audio/');
    _audioCache!.loadAll(['iniciatrabalho.mp3','fim_descanso_suave.mp3','iniciatrabalho.mp3']);
    AudioHelper._audioCache;
    return _instance;
  }

  AudioHelper._privateConstructor();

  trabalhar() {
    _audioCache!.play(horaTrabalhar);
  }

  descansar() {
    _audioCache!.play(horaDescansar);
  }

  clique() {
    _audioCache!.play(iniciarTrabalho);
  }
}
