import 'package:flutter/material.dart';

void main() {
  runApp(const MeuApp());
}

class MeuApp extends StatelessWidget {
  const MeuApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Programa Layout',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.blue), // Cor alterada para amarelo
        useMaterial3: true,
      ),
      home: const MinhaPaginaInicial(),
    );
  }
}

class MinhaPaginaInicial extends StatelessWidget {
  const MinhaPaginaInicial({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.primary,
        title: const Text('Programa Layout'),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Text(
              'Layout Superior',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 20),
            Container(
              alignment: Alignment.center,
              decoration: BoxDecoration(
                color: Colors.pink, // Cor do container continua rosa
                borderRadius: BorderRadius.circular(20),
                boxShadow: const [
                  BoxShadow(
                    color: Colors.black45,
                    blurRadius: 10,
                    offset: Offset(5, 5),
                  ),
                ],
              ),
              width: 300, // Largura do container
              height: 200, // Altura do container
              child: const Text(
                'Meu Aplicativo',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20, // Tamanho do texto
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            const SizedBox(height: 20),
            const Text(
              'Layout Inferior',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
          ],
        ),
      ),
    );
  }
}
