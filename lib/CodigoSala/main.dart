import 'package:flutter/material.dart';
import 'difficulty.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  bool opacidade = true;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Container(
        child: Scaffold(
          appBar: AppBar(title: Text("Tarefas")),
          body: AnimatedOpacity(
            opacity: opacidade ? 1 : 0,
            duration: Duration(milliseconds: 800),
            child: ListView(
              children: [
                Cards("Comer", 5,
                    'https://blog.livup.com.br/wp-content/uploads/2020/11/alimentacao-saudavel.jpg'),
                Cards("Andar de Bike", 3,
                    'https://imgcentauro-a.akamaihd.net/1366x1366/81674002A7.jpg'),
                Cards("Programar", 5,
                    'https://horadecodar.com.br/wp-content/uploads/2023/01/melhores-monitores-para-programar-de-2023-capa.jpg'),
                Cards("Correr", 4,
                    'https://s2.glbimg.com/7HSLTdOAk6X1OYl5yVMXjSE6otg=/620x390/top/smart/s.glbimg.com/es/ge/f/original/2015/03/16/98165520.jpg'),
                Cards("Aprender inglês", 5,
                    'https://www.ifmg.edu.br/governadorvaladares/noticias/campus-ipatinga-oferta-2500-vagas-para-curso-de-ingles-instrumental-a-distancia/curso-ingles-instrumental-ifmg-ipatinga/@@images/a1ce4931-2901-4fc8-a229-7161f9af976c.jpeg'),
                Cards("Fazer Crossfit", 5,
                    'https://hips.hearstapps.com/hmg-prod/images/dsc06980-copy-641085bae1e4e.jpg?crop=1.00xw:0.564xh;0,0.172xh&resize=1200:*'),
                Cards("Meditar", 3,
                    'https://magscan.com.br/wp-content/uploads/2020/04/original-2ce8ad3de83875daa42bae2bc572c235.jpeg'),
                Cards("Alimentar o Dog", 1,
                    'https://cvvidaanimal.com.br/wp-content/uploads/2015/10/cao-racao15.jpg.webp'),
              ],
            ),
          ),
          floatingActionButton: FloatingActionButton(
              onPressed: () {
                setState(() {
                  opacidade = !opacidade;
                });
              },
              child: Icon(Icons.arrow_drop_up)),
        ),
      ),
    );
  }
}

class Cards extends StatefulWidget {
  final String nome;
  final int dificuldade;
  final String urlImage;

  const Cards(this.nome, this.dificuldade, this.urlImage, {Key? key})
      : super(key: key);

  @override
  State<Cards> createState() => _CardsState();
}

class _CardsState extends State<Cards> {
  int nivel = 0;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Stack(children: [
        Container(
          height: 150,
          decoration: BoxDecoration(
              color: Colors.blue, borderRadius: BorderRadius.circular(4)),
        ),
        Column(
          children: [
            Container(
              height: 100,
              decoration: BoxDecoration(
                  color: Colors.white, borderRadius: BorderRadius.circular(4)),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    height: 100,
                    width: 100,
                    decoration: BoxDecoration(
                        color: Colors.blueGrey,
                        borderRadius: BorderRadius.circular(4)),
                    child: ClipRRect(
                        borderRadius: BorderRadius.circular(4),
                        child:
                            Image.network(widget.urlImage, fit: BoxFit.cover)),
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                          width: 200,
                          child: Text(widget.nome,
                              style: TextStyle(
                                  fontSize: 24,
                                  overflow: TextOverflow.ellipsis))),
                      Difficulty(widget.dificuldade),
                    ],
                  ),
                  ElevatedButton(
                    onPressed: () {
                      setState(() {
                        nivel++;
                      });
                      print(nivel);
                    },
                    child: Text("OK"),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    width: 200,
                    child: LinearProgressIndicator(
                      backgroundColor: Colors.lightBlueAccent,
                      color: Colors.white,
                      value: (widget.dificuldade > 0)
                          ? nivel / widget.dificuldade / 10
                          : 1,
                    ),
                  ),
                  Text("Nível: $nivel", style: TextStyle(color: Colors.white)),
                ],
              ),
            ),
          ],
        ),
      ]),
    );
  }
}
