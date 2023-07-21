import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home Page'),
        actions: <Widget>[
          IconButton(
            icon: const Icon(Icons.add_alert),
            tooltip: 'Show Snackbar',
            onPressed: () {
              ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(content: Text('mensagem do sininho')));
            },
          ),
          IconButton(
            icon: const Icon(Icons.navigate_next),
            tooltip: 'Go to the next page',
            onPressed: () {
              Navigator.push(context,MaterialPageRoute<void>(
                  builder: (BuildContext context) {
                    return Scaffold(
                      appBar: AppBar(
                        title: const Text('Voltar Página'),
                        actions: <Widget>[
                          IconButton(
                            icon: const Icon(Icons.navigate_next),
                            tooltip: 'Go to the next page',
                            onPressed: () {
                              Navigator.push(context, MaterialPageRoute<void>(
                                  builder: (BuildContext context) {
                                    return Scaffold(
                                      appBar: AppBar(
                                        title: const Text('Voltar Página'),
                                      ),
                                      body: const Center(
                                        child: Text(
                                          'Terceira página',
                                          style: TextStyle(fontSize: 24),
                                        ),
                                      ),
                                      floatingActionButton:
                                          FloatingActionButton(
                                              child: Text('Botão pagina 3'),
                                              onPressed: () {
                                                print('botão pagina 3');
                                              }),
                                    );
                                  },
                                ),
                              );
                            },
                          ),
                        ],
                      ),
                      body: const Center(
                        child: Text(
                          'Segunda página',
                          style: TextStyle(fontSize: 24),
                        ),
                      ),
                    );
                  },
                ),
              );
            },
          ),
        ],
      ),
      body: Center(
        child: Text(
          'Meu aplicativo',
          style: TextStyle(fontSize: 24),
        ),
      ),
      floatingActionButton: FloatingActionButton(
          child: Icon(Icons.add),
          onPressed: () {
            print('Botão pagina 1');
          }),
    );
  }
}
