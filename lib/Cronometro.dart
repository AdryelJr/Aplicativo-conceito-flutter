import 'package:flutter/material.dart';
import 'dart:async';

void main() {
  runApp(
    MaterialApp(
      home: MyCronometro(),
    ),
  );
}

class MyCronometro extends StatefulWidget {
  @override
  State<MyCronometro> createState() => _MyCronometroState();
}

class _MyCronometroState extends State<MyCronometro> {
  bool _isRunning = false;
  int _minutos = 0;
  int _seconds = 0;
  int _milissegundos = 0;
  late Timer _timer;

  int _intervalCounter = 0;

  void _startTimer() {
    _timer = Timer.periodic(Duration(milliseconds: 16), (timer) {
      // Atualização a cada 16 milissegundos
      setState(() {
        _milissegundos += 16; // Adiciona 16 milissegundos a cada intervalo
        if (_milissegundos >= 1000) {
          // Quando os milissegundos atingirem 1000
          _seconds++; // Aumenta os segundos
          _milissegundos = 0; // Reseta os milissegundos
          if (_seconds >= 60) {
            // Quando os segundos atingirem 60
            _minutos++; // Aumenta os minutos
            _seconds = 0; // Reseta os segundos
          }
        }
      });
    });
  }

  void _stopTimer() {
    _timer.cancel();
    setState(() {
      _isRunning = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Column(
          children: const [
            Text(
              'Cronômetro',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 22),
            ),
          ],
        ),
        centerTitle: true,
        backgroundColor: Color.fromARGB(
            255, 8, 135, 181), //0xFF + codigo da cor (Color(0xFF0A6D92))
        elevation: 2, //sombra
        toolbarHeight: 60,
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.vertical(bottom: Radius.circular(15))),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              '${_minutos.toString().padLeft(2, '0')}:${_seconds.toString().padLeft(2, '0')}:${(_milissegundos ~/ 10).toString().padLeft(2, '0')}', // Divide por 10 para formatar os milissegundos corretamente
              style: TextStyle(fontSize: 70),
            ),
            SizedBox(height: 30),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                  onPressed: () {
                    if (!_isRunning) {
                      setState(() {
                        _isRunning = true;
                      });
                      _startTimer();
                    }
                  },
                  child: Text('Iniciar'),
                  style: ElevatedButton.styleFrom(
                    primary: Colors.green, padding: EdgeInsets.fromLTRB(28, 20, 28, 20),
                  ),
                ),
                SizedBox(width: 20),
                ElevatedButton(
                  onPressed: () {
                    if (_isRunning) {
                      _stopTimer();
                    }
                  },
                  child: Text('Parar'),
                  style: ElevatedButton.styleFrom(
                    primary: Colors.red, padding: EdgeInsets.fromLTRB(30, 20, 30, 20),
                  ),
                ),
                SizedBox(width: 20),
                ElevatedButton(
                  onPressed: () {
                    setState(() {
                      _milissegundos = 0;
                      _minutos = 0;
                      _seconds = 0;
                      _stopTimer();
                    });
                  },
                  child: Text('Zerar'),
                  style: ElevatedButton.styleFrom(padding: EdgeInsets.fromLTRB(30, 20, 30, 20),),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
