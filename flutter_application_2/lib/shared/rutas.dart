import '../pages/home_page.dart';
import 'package:flutter_application_2/shared/rutas_constantes.dart';
import 'package:flutter_application_2/pages/input_page.dart';

final rutas = {
  Rutas.inicio.name: (context) => HomePage(),
  Rutas.inputsPage.name: (context) => InputPage(),
};