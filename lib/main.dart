import 'package:flutter/material.dart';

void main() {
  runApp(const MeuApp());
}

class MeuApp extends StatelessWidget {
  const MeuApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'PROGRAMA LOYALT',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const PaginaLayout(),
    );
  }
}

class PaginaLayout extends StatelessWidget {
  const PaginaLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(child: Text('PROGRAMA LOYALT')),
        backgroundColor: Colors.purple,
      ),
      body: LayoutBuilder(
        builder: (context, constraints) {
          return Column(
            children: <Widget>[
              Container(
                padding: const EdgeInsets.all(20),
                child: const Text(
                  'Layout Superior',
                  style: TextStyle(fontSize: 18),
                ),
              ),
              Expanded(
                child: Center(
                  child: Container(
                    width: 305,
                    margin: const EdgeInsets.all(10),
                    padding: const EdgeInsets.all(20),
                    decoration: BoxDecoration(
                      color: Colors.blue,
                      border: Border.all(color: Colors.white, width: 3),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: const Center(
                      child: Text(
                        'Meu Aplicativo',
                        style: TextStyle(fontSize: 18, color: Colors.white),
                      ),
                    ),
                  ),
                ),
              ),
              Container(
                padding: const EdgeInsets.all(20),
                child: const Text(
                  'Layout Inferior',
                  style: TextStyle(fontSize: 18),
                ),
              ),
            ],
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // Ação do botão
        },
        tooltip: 'Adicionar',
        child: const Icon(Icons.add),
        backgroundColor: Colors.purple,
      ),
    );
  }
}
