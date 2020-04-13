import 'package:mobx/mobx.dart';

part 'controlar_botoes.g.dart';

class ControlarBotoes = _ControlarBotoes with _$ControlarBotoes;

abstract class _ControlarBotoes with Store {

  @observable
  bool botao_status = false;

  @action
  void alterar_status(){
    if(botao_status) ? botao_status = false : botao_status = true;
  }




}