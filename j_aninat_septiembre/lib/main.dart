import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Icon(Icons.waving_hand),
          centerTitle: true,
          leading: const Icon(Icons.arrow_back),
          actions: const [Icon(Icons.arrow_forward)],
        ),
        body: ListView(
          // Usamos ListView en lugar de SingleChildScrollView
          children: [
            Container(
              height: 400.0, // Altura de 570 píxeles
              width: double.infinity, // Ocupa todo el ancho disponible
              color: Colors.grey, // Color de fondo gris
              child: const Center(
                child: Text('Img grande'),
              ), // Texto dentro del primer Container
            ),
            const SizedBox(height: 100.0),
            Container(
              height: 100.0,
              color: Colors.transparent,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  Row(
                    children: [
                      Container(
                        width: 100.0,
                        color: Colors.red,
                        child: Center(child: Text('img 1')),
                      ),
                      const SizedBox(width: 20.0),
                      Container(
                        width: 100.0,
                        color: Colors.blue,
                        child: Center(child: Text('img 2')),
                      ),
                      const SizedBox(width: 20.0),
                      Container(
                        width: 100.0,
                        color: Colors.yellow,
                        child: Center(child: Text('img 3')),
                      ),
                      const SizedBox(width: 20.0),
                      Container(
                        width: 100.0,
                        color: Colors.green,
                        child: Center(child: Text('img 4')),
                      ),
                      const SizedBox(width: 20.0),
                      Container(
                        width: 100.0,
                        color: Colors.amber,
                        child: Center(child: Text('img 5')),
                      ),
                      const SizedBox(width: 20.0),
                      Container(
                        width: 100.0,
                        color: Colors.grey,
                        child: Center(child: Text('img 6')),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            // Espacio de 12 píxeles entre los containers
          ],
        ),
      ),
    );
  }
}
