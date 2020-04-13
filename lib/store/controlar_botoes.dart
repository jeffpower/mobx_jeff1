import 'package:mobx/mobx.dart';

part 'controlar_botoes.g.dart';

class ControlarBotoes = _ControlarBotoes with _$ControlarBotoes;

abstract class _ControlarBotoes with Store {

  @observable
  bool botao_status = false;

  @action
  void alterarStatus(){
    botao_status = botao_status ? false : true; //operador ternário
  }

  @computed
  String get meu_texto => botao_status ? "Muito bem" : "Muito mal :{";


}