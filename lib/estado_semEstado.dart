import 'package:flutter/material.dart';

class MyStatelessWidget extends StatelessWidget {
  int data = 0;

  void somaData() {
    if(data >= 100){
      print("Contagem chegou a 100. Reiniciando...");
      data = 0;
    }
    data++;
    print('Botão StatelessWidget pressionado - Data: $data');
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(30),
      padding: EdgeInsets.all(52),
      color: Color.fromARGB(255, 75, 0, 130),
      child: Column(
        children: [
          Text(
            'StatelessWidget: $data',
            style: TextStyle(
              color: Colors.white
            ),
          ),
          ElevatedButton(
            onPressed: somaData,
            child: Text('Pressione - Stateless'),
<<<<<<< HEAD
          ),
        ],
      ),
    );
  }
}

class MyStatefulWidget extends StatefulWidget {
  @override
  _MyStatefulWidgetState createState() => _MyStatefulWidgetState();
}

class _MyStatefulWidgetState extends State<MyStatefulWidget> {
  int data = 0;

  void _handleButtonPress() {
    setState(() {
      if(data >= 100){
        print("Contagem chegou a 100, Reiniciando...");
        data = 0;
      }
      data++;
      print('Botão StatefulWidget pressionado - Data: $data');
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(20),
      padding: EdgeInsets.all(55),
      color: Color.fromARGB(255, 75, 0, 130),
      child: Column(
        children: [
          Text(
            'StatefulWidget: $data',
            style: TextStyle(
              color: Colors.white
              ),
            ),
          ElevatedButton(
            onPressed: _handleButtonPress,
            child: Text('Pressione - Stateful'),
=======
>>>>>>> 640548430f7cc51877407318e5a48fa15156bbba
          ),
        ],
      ),
    );
  }
}

class MyStatefulWidget extends StatefulWidget {
  @override
  _MyStatefulWidgetState createState() => _MyStatefulWidgetState();
}

class _MyStatefulWidgetState extends State<MyStatefulWidget> {
  int data = 0;

  void _handleButtonPress() {
    setState(() {
      if(data >= 100){
        print("Contagem chegou a 100, Reiniciando...");
        data = 0;
      }
      data++;
      print('Botão StatefulWidget pressionado - Data: $data');
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(20),
      padding: EdgeInsets.all(55),
      color: Color.fromARGB(255, 75, 0, 130),
      child: Column(
        children: [
          Text(
            'StatefulWidget: $data',
            style: TextStyle(
              color: Colors.white
              ),
            ),
          ElevatedButton(
            onPressed: _handleButtonPress,
            child: Text('Pressione - Stateful'),
          ),
        ],
      ),
    );
  }
}