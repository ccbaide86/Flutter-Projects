import 'package:flutter/material.dart';
import 'package:flutter_application_2/shared/rutas.dart';
import 'package:flutter_application_2/shared/rutas_constantes.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: Rutas .inputsPage.name,
      routes: rutas,
    );
  }
}
