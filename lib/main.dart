import 'package:flutter/material.dart';
import 'botao1.dart';
import 'botao2.dart';

void main() {
  runApp(MaterialApp(
    home: HomePage(),
  ));
}

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Column(
          children: const [
            Text(
              'Tarefas',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 22),
            ),
            Text(
              'Diárias',
              style: TextStyle(fontSize: 13),
            ),
          ],
        ),
        centerTitle: true,
        backgroundColor:
            Color(0xFF0A6D92), //0xFF + codigo da cor (Color(0xFF0A6D92))
        elevation: 2, //sombra
        toolbarHeight: 65,
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.vertical(bottom: Radius.circular(25))),
      ),
      body: Container(
        padding: EdgeInsets.all(8),
        decoration: BoxDecoration(
          color: Colors.white,
        ),
        child: ListView(
          children: const [
             SizedBox(
              height: 5,
            ),
            Cards(titulo: "Primeira tarefa"),
             SizedBox(
              height: 10,
            ),
            Cards(
              titulo: "Segunda tarefa",
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: () {
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(
              content: Text(
                "Botão de soma pressionado",
              ),
              backgroundColor: Colors.green,
            ),
          );
        },
      ),
    );
  }
}

class Cards extends StatelessWidget {
  final String titulo;
  const Cards({super.key, required this.titulo});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          height: 150,
          width: 400,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(16),
            color: Color(0xFF0A6D92),
          ),
        ),
        Container(
          height: 110,
          width: 400,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.vertical(top: Radius.circular(16)),
            color: Color.fromARGB(255, 224, 224, 224),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Container(
                height: 70,
                width: 70,
                color: Color.fromARGB(255, 75, 0, 130),
              ),
              Text(titulo),
              ElevatedButton(
                onPressed: () {
                  if (titulo == "Primeira tarefa") {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (BuildContext context) {
                        return botao1(); // Você pode retornar uma nova tela aqui
                      }),
                    );
                  } else if (titulo == "Segunda tarefa") {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (BuildContext context) {
                        return botao2(); // Você pode retornar uma nova tela aqui
                      }),
                    );
                  }
                  ;
                },
                child: Icon(Icons.keyboard_double_arrow_up),
                style: ElevatedButton.styleFrom(
                  primary: Color.fromARGB(163, 255, 153, 0),
                ),
              ),
              //teste
            ],
          ),
        ),
      ],
    );
  }
}
