import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: botao2(),
  ));
}

class botao2 extends StatelessWidget {
  const botao2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Tarefa botão 2')),
      body: Container(
        color: Colors.green,
        child: Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("Página 2 em construção", style: TextStyle(color: Colors.white, fontSize: 30),),
            ],
          ),
        ),
      ),
    );
  }
}
