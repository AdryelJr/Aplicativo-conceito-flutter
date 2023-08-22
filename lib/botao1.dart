
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp(botao1());
}

class botao1 extends StatelessWidget {
  const botao1 ({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Tarefas'),
        backgroundColor: Color.fromARGB(255, 127, 1, 149),
      ),
      body: Column(
        children: [
         Container(
          width: 400,
          height: 400,
          color: Colors.black,
          child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
            children:[ 
              Text(
                "Página do botão clicado",
                style: TextStyle(fontSize:30, color: Colors.white)
              ),
            ],
          ),
         ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: () {},
      ),
    );
  }
}