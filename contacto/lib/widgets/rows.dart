import 'package:flutter/material.dart';

class Rows extends StatelessWidget {
  const Rows({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 9.0),
          child: Row(
            children: [
              CircleAvatar(
                backgroundColor: Colors.green,
                child: Text("W"),
              ),
              SizedBox(
                width: 20,
              ),
              Text("Enviar mensaje a +504 9902-9311"),
            ],
          ),
        ),
        SizedBox(
          height: 8,
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 9.0),
          child: Row(
            children: [
              CircleAvatar(
                backgroundColor: Colors.green,
                child: Text("W"),
              ),
              SizedBox(
                width: 20,
              ),
              Text("Llamar a +504 9902-9311"),
            ],
          ),
        ),
        SizedBox(
          height: 8,
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 9.0),
          child: Row(
            children: [
              CircleAvatar(
                backgroundColor: Colors.green,
                child: Text("W"),
              ),
              SizedBox(
                width: 20,
              ),
              Text("Videollamar a +504 9902-9311"),
            ],
          ),
        ),
        SizedBox(
          height: 8,
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 9.0),
          child: Row(
            children: [
              CircleAvatar(
                backgroundColor: Colors.blue,
                child: Text("T"),
              ),
              SizedBox(
                width: 20,
              ),
              Text("Mensaje al +504 9902-9311"),
            ],
          ),
        ),
        SizedBox(
          height: 8,
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 9.0),
          child: Row(
            children: [
              CircleAvatar(
                backgroundColor: Colors.blue,
                child: Text("T"),
              ),
              SizedBox(
                width: 20,
              ),
              Text("Llamada de voz al +504 9902-9311"),
            ],
          ),
        ),
        SizedBox(
          height: 8,
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 9.0),
          child: Row(
            children: [
              CircleAvatar(
                backgroundColor: Colors.blue,
                child: Text("T"),
              ),
              SizedBox(
                width: 20,
              ),
              Text("Videollamada al +504 9902-9311"),
            ],
          ),
        ),
      ],
    );
  }
}
