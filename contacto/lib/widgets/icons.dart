import 'package:flutter/material.dart';

class Iconos extends StatelessWidget {
  const Iconos({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(vertical: 10.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [Icon(Icons.phone_outlined), Text('Llamar')],
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [Icon(Icons.message_outlined), Text('Mensaje de texto')],
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [Icon(Icons.video_call_outlined), Text('Video')],
          ),
        ],
      ),
    );
  }
}
