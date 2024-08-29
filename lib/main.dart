import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Gabriel Rocha',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: const Text('Gabriel Rocha - Atividade 03'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            // Image above the title
            Image.network(
              'https://miro.medium.com/v2/resize:fit:1024/1*QY5S4senfFh-mIViSi5A_Q.png',
              width: 300,
              height: 300,
            ),
            const SizedBox(height: 20),
            // Title
            const Text(
              'React Native',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 20),
            // Paragraph text
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 16.0),
              child: Text(
                'Este é um parágrafo de exemplo. Ele pode conter qualquer informação que você deseja exibir na tela.',
                textAlign: TextAlign.center,
              ),
            ),
            const SizedBox(height: 20),
            // Button
            ElevatedButton(
              onPressed: () {
                // Adicione a ação do botão aqui
              },
              child: const Text('Um botão legal'),
            ),
          ],
        ),
      ),
    );
  }
}
