import 'package:flutter/material.dart';
import 'package:mobxjeff1/store/controlar_botoes.dart';
import 'package:mobxjeff1/store/controlar_botoes.dart;


class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  @override
  void initState() {
    // TODO: implement initState
    autorun((botao_status){
      ControlarBotoes.alterar_status;
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
        appBar: AppBar(
            title: Text("Teste de Mobx")),
        body: Center(
            child: FloatingActionButton(
              onPressed: ControlarBotoes.alterar_status,
            )
        )
    );
  }
}
