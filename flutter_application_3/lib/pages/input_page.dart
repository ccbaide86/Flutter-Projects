import 'package:flutter/material.dart';
import 'package:flutter_application_3/widgets/input_form.dart';
import 'package:flutter_application_3/shared/rutas_constantes.dart';

class InputPage extends StatelessWidget {
  InputPage({super.key});

  final correoController = TextEditingController();
  final contraseniaController = TextEditingController();
  final formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const Icon(Icons.movie),
        title: const Text('T M D B'),
        backgroundColor: Colors.blue,
      ),
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Form(
          key: formKey,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              const CircleAvatar(
                backgroundColor: Colors.blue,
                radius: 70,
                child: Icon(Icons.person, color: Colors.white, size: 60 ), 
              ),
              const SizedBox(
                height: 10,
              ),
              InputForm(
                label: 'Ingrese su correo',
                icon: Icons.person,
                controller: correoController,
                validator: (value) {
                  if (value!.isEmpty) {
                    return 'Ingrese un correo';
                  }
                  return null;
                },
              ),
              const SizedBox(
                height: 10,
              ),
              InputForm(
                label: 'Ingrese una contraseña',
                icon: Icons.password,
                obscureText: true,
                mostrarBoton: true,
                controller: contraseniaController,
                validator: (value) {
                  if (value!.isEmpty) {
                    return 'Ingrese una contraseña valida';
                  }
                  return null;
                },
              ),
              const SizedBox(
                height: 10,
              ),
              OutlinedButton(   
              onPressed: () {
              //Navigator.pushNamed(context, Rutas.inicio.name);
              getInputValue(context);
        },
        child: const Text('Confirmar', style: TextStyle(color: Colors.black),),
      ),
              const Spacer(),
            ],
          ),
        ),
      ),
    );
}
//Funcion de Validacion 
getInputValue(BuildContext context){
if(formKey.currentState!.validate()){
  if(correoController.text == "carlos.baide" && contraseniaController.text == "CB20192000521"){
      Navigator.pushNamed(context, Rutas.inicio.name);
  }else{
      ScaffoldMessenger.of(context).showSnackBar(
      const SnackBar(
        content: Text("¡Credenciales incorrectas!"),
        duration: Duration(seconds: 3),
        ),
      );
  }
}
} 
}