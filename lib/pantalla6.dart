import 'package:flutter/material.dart';

class PantallaSeis extends StatelessWidget {
  const PantallaSeis({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.cyanAccent, // Fondo azul
          title: const Text(
            'baseline',
            style: TextStyle(
              color: Colors.black, // Letra blanca
              fontSize: 20.0, // Tamaño de la letra 20
            ),
          ),
          centerTitle: true, // Centrar el texto
        ),
        body: Column(
          children: [
            SizedBox(
              height: 25,
            ),
            Center(
              child: Container(
                width: 200,
                height: 200,
                color: Colors.orange,
                child: const Baseline(
                  baseline: 50,
                  baselineType: TextBaseline.alphabetic,
                  child: FlutterLogo(size: 50),
                ),
              ),
            ),
            SizedBox(
              height: 25,
            ),
            Center(
              child: ElevatedButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                child: const Text('Regresar!'),
              ),
            ),
          ],
        ));
  }
}
