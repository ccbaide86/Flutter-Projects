import 'package:flutter/material.dart';
import 'package:cached_network_image/cached_network_image.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const Icon(Icons.house),
        backgroundColor: Colors.black,
        title: const Text('Home'),
      ),
      body: const SizedBox(
        width: double.infinity,
        child: Column(
          children: [
            SizedBox(
              height: 10,
            ),
            Text('¡Bienvenido a la pagina de inicio!', style: TextStyle(color: Colors.black, fontSize: 22, fontWeight: FontWeight.bold),
            ),
            SizedBox(
                width: double.infinity,
                child: Card(
                  child: Image(
                    image: CachedNetworkImageProvider(
                    'https://img.freepik.com/vector-premium/bienvenida-bocadillo-banner-cartel-bocadillo-texto-bienvenida_136321-1852.jpg'
                  ),
                    height: 200,
                  ),
                )
              ),
          ],
        ),
      ),
    );
  }
}