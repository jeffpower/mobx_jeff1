import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:mobx/mobx.dart';
import 'package:mobxjeff1/store/controlar_botoes.dart';

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  ControlarBotoes controle;
  //ReactionDisposer _reactionDisposer;

  @override
  void initState() {
    controle = ControlarBotoes();

   /* _reactionDisposer = autorun((_) {
      controle.alterarStatus();
    });*/
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text("Teste de Mobx")),
        body: Center(
          child: Column(children: <Widget>[
            FloatingActionButton(
              child: Icon(Icons.track_changes),
                //onPressed: controle.alterarStatus; //outra maniera de fazer, chamando o objeto
                onPressed: () {
                  controle.alterarStatus(); //dentro da função coloca os parenteses como funcção também
                  print(controle.botao_status);
                }
            ),

            Observer(builder: (_) {
              return SizedBox(
                height: 44,
                child: RaisedButton(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(32),
                    ),
                    child: controle.botao_status
                        ? Text("Ativado")
                        : Text('Desativado'),
                    onPressed: () {}),
              );
            })
          ]),
        ));
  }

 /* @override
  void dispose() {
    _reactionDisposer();
    super.dispose();
  }*/

}
