import 'package:flutter_application_3/pages/input_page.dart';
import '../pages/home_page.dart';
import 'package:flutter_application_3/shared/rutas_constantes.dart';


final rutas = {
  Rutas.inicio.name: (context) => HomePage(),
  Rutas.inputsPage.name: (context) => InputPage(),
};