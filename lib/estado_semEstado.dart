import 'package:flutter/material.dart';

class MyStateless extends StatelessWidget {
  int data = 0;

  void somaData() {
    data++;
    print('Botão Stateless pressionado - Data: $data');
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(10),
      padding: EdgeInsets.all(10),
      color: Colors.blue,
      child: Column(
        children: [
          Text('StatelessWidget: $data'),
          ElevatedButton(
            onPressed: somaData,
            child: Text('Pressione-me - Stateless'),
          ),
        ],
      ),
    );
  }
}
