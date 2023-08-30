import 'dart:async';

import 'package:flutter/material.dart';
import 'package:hello_world_flutter/usarTodos/slideBar.dart';

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
      drawer: MeuMenu(),
      appBar: AppBar(title: Text('Tarefas botão 2')),
      body: Container(
        color: Colors.green,
        child: Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: const[
              Text("Página 2 em construção", style: TextStyle(color: Colors.white, fontSize: 30),),
              
            ],
            
          ),
        ),
      ),
    );
  }
}
