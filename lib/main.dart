import 'package:flutter/material.dart';
import 'botao1.dart';

void main() {
  runApp(MaterialApp(
    home: HomePage()
  ));
}

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Tarefas'),
        backgroundColor: Color.fromARGB(255, 75, 0, 130),
      ),
      body: ListView(
        children: const [
          Cards(),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: () {
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(content: Text("Botão de soma pressionado")),
          );
        },
      ),
    );
  }
}

class Cards extends StatelessWidget {
  const Cards({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          height: 150,
          width: 1000,
          color: Color.fromARGB(255, 75, 0, 130),
        ),
        Container(
          height: 110,
          width: 400,
          color: Color.fromARGB(255, 224, 224, 224),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Container(
                height: 70,
                width: 70,
                color: Color.fromARGB(255, 75, 0, 130),
              ),
              Text("Primeira tarefa"),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (BuildContext context) {
                      return botao1(); // Você pode retornar uma nova tela aqui
                    }),
                  );
                },
                child: Icon(Icons.keyboard_double_arrow_up),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
