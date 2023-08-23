import 'package:flutter/material.dart';
import 'package:hello_world_flutter/estado_semEstado.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: botao1(),
    );
  }
}

class botoes_click extends StatelessWidget {
  final String qualBotao;

  botoes_click(this.qualBotao);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(20),
      padding: EdgeInsets.all(40),
      color: Color.fromARGB(255, 127, 1, 149),
      child: Column(
        children: [
          Text(
            'Botão clicado: $qualBotao',
            style: TextStyle(fontSize: 20 ,color: Colors.white),
          ),
        ],
      ),
    );
  }
}

class botao1 extends StatefulWidget {
  const botao1({Key? key}) : super(key: key);

  @override
  _botao1State createState() => _botao1State();
}

class _botao1State extends State<botao1> {
  String qualBotao = "Home";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Tarefas'),
        backgroundColor: Color.fromARGB(255, 127, 1, 149),
      ),
      body: ListView(
        children: [
          Container(
            width: 400,
            height: 615,
            child: Column(
              children: [
                MyStatelessWidget(),
                MyStatefulWidget(),
                botoes_click(qualBotao),
              ],
            ),
          ),
          Container(
            height: 80,
            color: Color.fromARGB(255, 224, 224, 224),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                ElevatedButton(
                  onPressed: () {
                    setState(() {
                      qualBotao = "Home";
                    });
                  },
                  style: ElevatedButton.styleFrom(
                    primary: Color.fromARGB(255, 127, 1, 149),
                  ),
                  child: Icon(Icons.home),
                ),
                ElevatedButton(
                  onPressed: () {
                    setState(() {
                      qualBotao = "Apple";
                    });
                  },
                  style: ElevatedButton.styleFrom(
                    primary: Color.fromARGB(255, 127, 1, 149),
                  ),
                  child: Icon(Icons.apple),
                ),
                ElevatedButton(
                  onPressed: () {
                    setState(() {
                      qualBotao = "Salvar";
                    });
                  },
                  style: ElevatedButton.styleFrom(
                    primary: Color.fromARGB(255, 127, 1, 149),
                  ),
                  child: Icon(Icons.bookmark_add),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
