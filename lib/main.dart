import 'package:flutter/material.dart';
import 'package:actividad_3/pantalla_principal.dart';

/*
González García David Elias. Correo: pineco2510@gmail.com
González Gómez Alejandro. Correo: alejandrogogo02@gmail.com
Miramontes Carsolio Carla Ivette. Correo: carlitaivettemc@gmail.com
Sevilla Rivera Eder Eduardo. Correo: cevillaedgar1@gmail.com
*/

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: pantalla_principal(),
    );
  }
}
