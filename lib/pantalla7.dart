import 'package:flutter/material.dart';

class PantallaSiete extends StatefulWidget {
  const PantallaSiete({Key? key}) : super(key: key);

  @override
  State<PantallaSiete> createState() => _PantallaSieteState();
}

class _PantallaSieteState extends State<PantallaSiete> {
  bool isShow = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepOrange,
        title: const Text(
          'block_semantics',
          style: TextStyle(color: Colors.white, fontSize: 20.0),
        ),
        centerTitle: true,
      ),
      body: Column(
        children: [
          const SizedBox(height: 25),
          OutlinedButton(
            child: const Text('Click'),
            onPressed: () => setState(() {
              isShow = true;
            }),
          ),
          if (isShow)
            BlockSemantics(
              blocking: isShow,
              child: Card(
                color: Colors.orangeAccent,
                child: SizedBox(
                  width: 200,
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      const SizedBox(height: 10),
                      const Text('Esto es una tarjeta'),
                      TextButton(
                        child: const Text('Cerrar'),
                        onPressed: () => setState(() {
                          isShow = false;
                        }),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          const SizedBox(height: 25),
          Center(
            child: ElevatedButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: const Text('Regresar!'),
            ),
          ),
        ],
      ),
    );
  }
}
