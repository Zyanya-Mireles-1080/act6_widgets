import 'package:flutter/material.dart';

class PantallaTres extends StatefulWidget {
  const PantallaTres({Key? key}) : super(key: key);

  @override
  State<PantallaTres> createState() => _PantallaTresState();
}

class _PantallaTresState extends State<PantallaTres> {
  static const List<String> listItems = <String>[
    'melany',
    'kevin',
    'adriel',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.deepOrange, // Fondo azul
          title: const Text(
            'autocomplete',
            style: TextStyle(
              color: Colors.white, // Letra blanca
              fontSize: 20.0, // Tamaño de la letra 20
            ),
          ),
          centerTitle: true, // Centrar el texto
        ),
        body: Column(
          children: [
            SizedBox(
              height: 30,
            ),
            Center(
              child: Autocomplete<String>(
                optionsBuilder: (TextEditingValue textEditingValue) {
                  if (textEditingValue.text == '') {
                    return const Iterable<String>.empty();
                  }
                  return listItems.where((String item) {
                    return item.contains(textEditingValue.text.toLowerCase());
                  });
                },
                onSelected: (String item) {
                  print('El $item fue seleccionado');
                },
              ),
            ),
            SizedBox(
              height: 30,
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
