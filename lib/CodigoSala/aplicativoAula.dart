import 'package:flutter/material.dart';
import 'package:hello_world_flutter/botao1.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Meu aplicativo',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Barra de navigator'),
        ),
        body: ListView(
          children: [
            Tarefa(texto: "Jogar"),
            Tarefa(texto: "Estudar"),
            Tarefa(texto: "Programar")
          ],
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {},
          child: Icon(Icons.add),
        ),
      ),
    );
  }
}

class Tarefa extends StatelessWidget {
  const Tarefa ({super.key, required this.texto});

  final String texto;
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          height: 150,
          color: Colors.blue,
        ),
        Container(
          height: 100,
          color: const Color.fromARGB(255, 196, 107, 107),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Container(
                width: 50,
                height: 50,
                color: Colors.white,
              ),
              Text(texto),
              ElevatedButton(
                  onPressed: () {}, child: Icon(Icons.keyboard_double_arrow_up))
            ],
          ),
        ),
      ],
    );
  }
}
