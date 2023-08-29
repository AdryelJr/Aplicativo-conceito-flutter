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
      color: Color(0xFF0A6D92),
      child: Column(
        children: [
          Text(
            'Botão clicado: $qualBotao',
            style: TextStyle(fontSize: 20, color: Colors.white),
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
        title: Text(
          'Tarefas botão 1',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        backgroundColor: Color(0xFF0A6D92),
        toolbarHeight: 70,
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.vertical(bottom: Radius.circular(30))),
      ),
      body: ListView(
        children: [
          Container(
            width: 400,
            child: Column(
              children: [
                MyStatelessWidget(),
              

                MyStatefulWidget(),
                botoes_click(qualBotao),
              ],
            ),
          ),
          
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              height: 80,
              margin: EdgeInsets.fromLTRB(56, 0, 0, 0),
              padding: EdgeInsets.fromLTRB(16, 0, 0, 0),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.horizontal(left: Radius.circular(30)),
                color: Color.fromARGB(223, 227, 137, 2),
              ),
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  SizedBox(width: 20),
                  ElevatedButton(
                    onPressed: () {
                      setState(() {
                        qualBotao = "Home";
                      });
                    },
                    style: ElevatedButton.styleFrom(
                      primary: Color(0xFF0A6D92),
                      shape: CircleBorder(),
                      padding: EdgeInsets.all(14),
                    ),
                    child: Icon(
                      Icons.home,
                      size: 32,
                    ),
                  ),
                  SizedBox(width: 30),
                  ElevatedButton(
                    onPressed: () {
                      setState(() {
                        qualBotao = "Apple";
                      });
                    },
                    style: ElevatedButton.styleFrom(
                      primary: Color(0xFF0A6D92),
                      shape: CircleBorder(),
                      padding: EdgeInsets.all(14),
                    ),
                    child: Icon(
                      Icons.apple,
                      size: 32,
                    ),
                  ),
                  SizedBox(width: 30),
                  ElevatedButton(
                    onPressed: () {
                      setState(() {
                        qualBotao = "Música";
                      });
                    },
                    style: ElevatedButton.styleFrom(
                      primary: Color(0xFF0A6D92),
                      shape: CircleBorder(),
                      padding: EdgeInsets.all(14),
                    ),
                    child: Icon(
                      Icons.music_note,
                      size: 32,
                    ),
                  ),
                  SizedBox(width: 30),
                  ElevatedButton(
                    onPressed: () {
                      setState(() {
                        qualBotao = "Perfil";
                      });
                    },
                    style: ElevatedButton.styleFrom(
                      primary: Color(0xFF0A6D92),
                      shape: CircleBorder(),
                      padding: EdgeInsets.all(14),
                    ),
                    child: Icon(
                      Icons.account_box,
                      size: 32,
                    ),
                  ),
                  SizedBox(width: 30),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
