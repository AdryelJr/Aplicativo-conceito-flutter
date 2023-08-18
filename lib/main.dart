import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: HomePage(),
  ));
}

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Cards();
  }
}

class Cards extends StatelessWidget {
  const Cards({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Tarefas'),
      ),
      body: Stack(
        children: [
          Container(
            height: 150,
            width: 1000,
            color: Color.fromARGB(255, 127, 1, 149),
          ),
          Container(
            height: 100,
            width: 1000,
            color: Color.fromARGB(255, 224, 224, 224),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Container(height: 70,width: 70, color: Color.fromARGB(255, 127, 1, 149),),
                Text("Primeira tarefa"),
                ElevatedButton(onPressed:(){}, child: Icon(Icons.add))
              ]
              ),
          )
        ],
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: () {
          print('Botão página 1');
        },
      ),
    );
  }
}
