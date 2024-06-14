import 'package:flutter/material.dart';
import 'package:flutter_application_2/widgets/input_form.dart';
import 'package:flutter_application_2/shared/rutas_constantes.dart';
import 'package:cached_network_image/cached_network_image.dart';

class InputPage extends StatelessWidget {
  InputPage({super.key});

  final correoController = TextEditingController();
  final contraseniaController = TextEditingController();
  final formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const Icon(Icons.person),
        title: const Text('Login'),
        backgroundColor: Colors.black,
      ),
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Form(
          key: formKey,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              const CircleAvatar(
                backgroundColor: Colors.black,
                radius: 70,
                backgroundImage: CachedNetworkImageProvider(
                  "https://esports.as.com/2020/01/08/aLexBY11.jpg?hash=bebf569a488c2b210c2fab63f9a92fac50e53da2"
                  ),
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
  if(correoController.text == "cbaide@unah.hn" && contraseniaController.text == "20192000521"){
      Navigator.pushNamed(context, Rutas.inicio.name);
  }else{
      ScaffoldMessenger.of(context).showSnackBar(
      const SnackBar(
        content: Text("¡Credenciales incorrectas!"),
        duration: Duration(seconds: 1),
        ),
      );
  }
}
} 
}