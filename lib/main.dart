import 'package:flutter/material.dart';
import 'package:flutter_classes/contact_form.dart';

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
        title: const Text('Gabriel Rocha'),
      ),
      body: SingleChildScrollView(
        child: Center(
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
              // Atividade 1: Custom Buttons
              ElevatedButton(
                onPressed: () {
                  // Ação do botão com borda arredondada
                },
                style: ElevatedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30),
                  ),
                ),
                child: const Text('Botão Arredondado'),
              ),
              const SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {
                  // Ação do botão com cor de fundo personalizada
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.orange,
                ),
                child: const Text('Botão Personalizado'),
              ),
              const SizedBox(height: 20),
              ElevatedButton.icon(
                onPressed: () {
                  // Ação do botão com ícone
                },
                icon: const Icon(Icons.star),
                label: const Text('Botão com Ícone'),
              ),
              const SizedBox(height: 40),
              // Atividade 2: Text Styles
              const Text(
                'Texto em Negrito e Sublinhado',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  decoration: TextDecoration.underline,
                  fontSize: 20,
                ),
              ),
              const SizedBox(height: 20),
              const Text(
                'Texto em Itálico e Azul',
                style: TextStyle(
                  fontStyle: FontStyle.italic,
                  color: Colors.blue,
                  fontSize: 20,
                ),
              ),
              const SizedBox(height: 20),
              const Text(
                'Texto Centralizado com Fonte Aumentada',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 24,
                ),
              ),
              const SizedBox(height: 40),
              // Botão para a próxima página
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const ContactFormPage()),
                  );
                },
                child: const Text('Ir para Formulário de Contato'),
              ),
              const Padding(
                  padding: EdgeInsets.symmetric(vertical: 30.0),
              )
            ],
          ),
        ),
      ),
    );
  }
}
