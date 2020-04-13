// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'controlar_botoes.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$ControlarBotoes on _ControlarBotoes, Store {
  final _$botao_statusAtom = Atom(name: '_ControlarBotoes.botao_status');

  @override
  bool get botao_status {
    _$botao_statusAtom.context.enforceReadPolicy(_$botao_statusAtom);
    _$botao_statusAtom.reportObserved();
    return super.botao_status;
  }

  @override
  set botao_status(bool value) {
    _$botao_statusAtom.context.conditionallyRunInAction(() {
      super.botao_status = value;
      _$botao_statusAtom.reportChanged();
    }, _$botao_statusAtom, name: '${_$botao_statusAtom.name}_set');
  }

  final _$_ControlarBotoesActionController =
      ActionController(name: '_ControlarBotoes');

  @override
  void alterar_status() {
    final _$actionInfo = _$_ControlarBotoesActionController.startAction();
    try {
      return super.alterar_status();
    } finally {
      _$_ControlarBotoesActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    final string = 'botao_status: ${botao_status.toString()}';
    return '{$string}';
  }
}
