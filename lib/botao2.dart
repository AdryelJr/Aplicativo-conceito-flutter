
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
      appBar: AppBar(title: Text('pagina botao 2')),
    );
  }
}