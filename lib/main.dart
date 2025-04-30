import 'package:flutter/material.dart';
import 'package:act6_widgets_rutas/pantalla1.dart';
import 'package:act6_widgets_rutas/pantalla2.dart';
import 'package:act6_widgets_rutas/pantalla3.dart';
import 'package:act6_widgets_rutas/pantalla4.dart';
import 'package:act6_widgets_rutas/pantalla5.dart';
import 'package:act6_widgets_rutas/pantalla6.dart';
import 'package:act6_widgets_rutas/pantalla7.dart';
import 'package:act6_widgets_rutas/pantalla8.dart';
import 'package:act6_widgets_rutas/pantalla9.dart';
import 'package:act6_widgets_rutas/pantalla10.dart';
import 'package:act6_widgets_rutas/pantallaInicial.dart';

void main() => runApp(const MiRutas());

class MiRutas extends StatelessWidget {
  const MiRutas({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Rutas entre páginas',
      routes: {
        // When navigating to the "/" route, build the FirstScreen widget.
        '/': (context) => const PantallaInicial(),
        // When navigating to the "/second" route, build the SecondScreen widget.
        '/pantalla1': (context) => const PantallaUno(),
        '/pantalla2': (context) => const PantallaDos(),
        '/pantalla3': (context) => const PantallaTres(),
        '/pantalla4': (context) => const PantallaCuatro(),
        '/pantalla5': (context) => const PantallaCinco(),
        '/pantalla6': (context) => const PantallaSeis(),
        '/pantalla7': (context) => const PantallaSiete(),
        '/pantalla8': (context) => const PantallaOcho(),
        '/pantalla9': (context) => const PantallaNueve(),
        '/pantalla10': (context) => const PantallaDiez(),
      },
    );
  }
}
