import 'package:mobx/mobx.dart';

part 'controlar_botoes.g.dart';

class ControlarBotoes = _ControlarBotoes with _$ControlarBotoes;

abstract class _ControlarBotoes with Store {

  @observable
  bool botao_status;

  @action
  void alterarStatus(){
    if(botao_status == true)
      botao_status = false;
    else
      botao_status = true;
  }




}