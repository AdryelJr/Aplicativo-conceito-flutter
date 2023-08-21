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
    return MaterialApp(
      home: Cards(),
    );
  }
}

class Cards extends StatelessWidget {
  const Cards({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Tarefas'),
        backgroundColor: Color.fromARGB(255, 127, 1, 149),
      ),
      body: Stack(
        children: [
          Container(
            height: 150,
            width: 1000,
            color: Color.fromARGB(255, 127, 1, 149),
          ),
          Container(
            height: 110,
            width: 1000,
            color: Color.fromARGB(255, 224, 224, 224),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Container(height: 70,width: 70, color: Color.fromARGB(255, 127, 1, 149),),
                Text("Primeira tarefa"),
                ElevatedButton(onPressed:(){
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(content:Text("Botão de cima pressionado"))
                  );
                },child: Icon(Icons.keyboard_double_arrow_up),)
              ]
            ),
          )
        ],
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: () {
          print('Botão página principal');
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(content:Text("Botão de soma pressionado"))
          );
        },
      ),
    );
  }
}
